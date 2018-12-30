export default class Home {
    constructor(count = 0) {
        this.count = count

        this.init()
    }

    async init() {
        console.debug('init')
        
        this.makeItLinks()
    }

    makeItLinks() {
        var products = document.getElementById('products')
        var projects = document.getElementById("projects")

        try {
            if (products) {
                products.onclick = () => {
                    console.debug('click')
                    this.count++
                    window.location.href = products.getAttribute('redirect-to')
                };
            }
            if (projects) {
                projects.onclick = () => {
                    console.debug('click')
                    this.count++
                    window.location.href = projects.getAttribute('redirect-to')
                };
            }
        }
        catch (err) {
            console.error(err)
        }
    }

    async videoInit() {
        console.debug('video init')

        let firstScriptTag;

        let tag = await document.createElement('script')
        tag.id = "youtubeIframAPI"
        tag.src = 'https://www.youtube.com/iframe_api';
        firstScriptTag = document.getElementsByTagName('script')[0]
        await firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)
    }

    async initYoutube(playerDiv, videoId, options, closure) {
        if (typeof playerDiv === 'undefined') {
            var playerDiv = document.createElement('div')
            playerdiv.id = 'player';
            if (typeof playerDiv.id === 'undefined') playerDiv.id = 'player';
        } else if (typeof playerDiv === 'string') {
            const pDiv = document.createElement('div')
            pDiv.id = playerDiv
            playerDiv = pDiv
        }

        if(typeof closure != 'function') {
            closure = `(playerDiv, options) => { 
                console.debug('hello')
                return new YT.Player(playerDiv.id, options) 
            }`;
        }

        try {
            if (typeof videoId === 'undefined') throw 'VideoIdRequired';

            if (typeof options === 'undefined') {
                options = {
                    videoId, // YouTube Video ID
                    width: 1920, // Player width (in px)
                    height: 1080, // Player height (in px)
                    fitToBackground: true,
                    playerVars: {
                        autoplay: 1, // Auto-play the video on load
                        controls: 0, // Show pause/play buttons in player
                        showinfo: 0, // Hide the video title
                        modestbranding: 1, // Hide the Youtube Logo
                        loop: 1, // Run the video in a loop
                        fs: 0, // Hide the full screen button
                        cc_load_policy: 0, // Hide closed captions
                        iv_load_policy: 3, // Hide the Video Annotations
                        autohide: 1, // Hide video controls when playing
                        rel: 0,
                        mute: 1,
                        color: 'red',
                        disablekb: 1
                    },
                    events: {
                        onReady(e) {
                            e.target.setVolume(5)
                        }
                    }
                }
            }

            // return closure();
            
            const player = new window['YT'].Player(playerDiv.id, options)
            return player
        } catch (err) {
            console.error(err)
        }
    }

    async youtube() { // async onYouTubeIframeAPIReady() {
        await this.initYoutube('player0', '3KtJ2yZWErQ', null, (playerDiv, options) => {
            return new YT.Player(playerDiv.id, options)
        })
        await this.initYoutube('player1', 'gPEW0gZK6Ho', null, (playerDiv, options) => {
            return new YT.Player(playerDiv.id, options)
        })
    }
}
