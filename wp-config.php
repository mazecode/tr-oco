<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix 
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //

// mysql://root:symf0ny@mysql:3306/individual-vocabulary

/** The name of the database for WordPress */
define('DB_NAME', 'homestead');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '120712');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'z25-#rb2-4<C9|7|C-RMF)+D;gnL$EDQ*,pufrT=lMs*K-!qlOw@)o9=p|RLV{Dt');
define('SECURE_AUTH_KEY',  'A]7XUd}}Pq$a+7^eqs`h.@rU -!tfM)aoOE-*u1HX3|+w:v3&$uKX[,wV[+kU-Nv');
define('LOGGED_IN_KEY',    '+.kh{4?[|/Z>Cx!W(EdxJleQXo_o0,_tEL;cjnfA>{6|$*w<n`lTikdLLE_ngZw2');
define('NONCE_KEY',        '-_zhE3;;=A!PAw=k F_U.tyI+Kz[8{khZw_0.S7h?/ZoX|v|@!`lm| u3tdg8$rG');
define('AUTH_SALT',        'vA-ok)DkPkDS1Ni/.|BR*/|;WHYdS!6S`++~nyz=YeSwBd$ugCxbq.$1d$?+cqXb');
define('SECURE_AUTH_SALT', 'F;qQnT.L9;d[y1%n|{vgAAQv!g?<G`C+=KdQKC8PJW,N?0hVu0<xyC+|.qEMDh6+');
define('LOGGED_IN_SALT',   'FYNpP+?|.h4c[ -T{S6%k4|5TAOu2+fJV C2h#%Tc8&0L$#-d-3/y@y>kI>>*s)<');
define('NONCE_SALT',       '1|^sPcJw@%8GdZw~p8kK;WT|Wh9,tUvj7> X+]Ay[9mpGGHt8pwD?9Nz8?Ga%9Pl');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);

/* That's all, stop editing! Happy blogging. */

define('FS_METHOD', 'direct');

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) define('ABSPATH', dirname(__FILE__) . '/');

// Include TypeRocket
require __DIR__ . '/init.php';

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
