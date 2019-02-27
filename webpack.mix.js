let mix = require('laravel-mix');
const GenerateJsonPlugin = require('generate-json-webpack-plugin');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 | @link https://github.com/JeffreyWay/laravel-mix/tree/master/docs#readme
 |
 */

mix.setPublicPath('./');

// Front End
mix
    .js('resources/assets/js/front-page.js', 'wordpress/assets/templates/js')
    .sass('resources/assets/sass/front-page.scss', 'wordpress/assets/templates/css')
    .options({
        processCssUrls: false
    })

    .version();

// Theme
mix
    .js('resources/assets/js/theme.js', 'wordpress/assets/templates/js')
    .sass('resources/assets/sass/theme.scss', 'wordpress/assets/templates/css')
    .copyDirectory('node_modules/@fortawesome/fontawesome-free/webfonts', 'wordpress/assets/templates/fonts')
    .options({
        processCssUrls: false
    })
    .version();
// .webpackConfig({
//     plugins: [
//         new GenerateJsonPlugin('asset-version.json', {
//             version: Math.round((new Date()).getTime() / 1000)
//         })
//     ]
// });

// Admin
mix
    .js('resources/assets/js/admin.js', 'wordpress/assets/templates/js')
    .sass('resources/assets/sass/admin.scss', 'wordpress/assets/templates/css')
    .options({
        processCssUrls: false
    })
    .version();

// Maintenance
mix
    .js('resources/assets/js/maintenance.js', 'wordpress/assets/templates/js')
    .sass('resources/assets/sass/maintenance.scss', 'wordpress/assets/templates/css')
    .options({
        processCssUrls: false
    })
    .version();

// TypeRocket Core
mix
    .js('vendor/typerocket/core/assets/js/core.js', 'wordpress/assets/typerocket/js/core.js')
    .js('vendor/typerocket/core/assets/js/location.field.js', 'wordpress/assets/typerocket/js/location.field.js')
    .sass('vendor/typerocket/core/assets/sass/core.scss', 'wordpress/assets/typerocket/css/core.css')
    .sass('vendor/typerocket/core/assets/sass/redactor.scss', 'wordpress/assets/typerocket/css/redactor.css')
    .copyDirectory('vendor/typerocket/core/assets/fonts', 'wordpress/assets/typerocket/fonts')
    .copyDirectory('vendor/typerocket/core/assets/js/lib', 'wordpress/assets/typerocket/js/lib')
    .options({
        processCssUrls: false
    })
    .version();

if (mix.inProduction()) {
    mix.version();
}