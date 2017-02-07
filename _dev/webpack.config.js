var webpack             = require('webpack'),
    path                = require('path'),
    ExtractTextPlugin   = require("extract-text-webpack-plugin");

var plugins             = [];

module.exports = {

    entry: [
        './js/theme.js'
    ],

    output: {
        path: '../assets/js',
        filename: 'theme.js'
    },

    module: {
        rules: [
            {
                test: /\.scss$/,

                use: ExtractTextPlugin.extract({
                    fallback: 'style-loader',
                    use: [
                        "css-loader",
                        "sass-loader"
                    ]
                })
            },
            {
                test: /.(png|woff(2)?|eot|ttf|svg)(\?[a-z0-9=\.]+)?$/,

                loader: 'file-loader',
                options: {
                    name: '../fonts/[name].[ext]?[hash]',
                    publicPath: '/'
                }
            },
            {
                test: /\.css$/,
                
                use: [
                    'style-loader',
                    {
                        loader: 'css-loader',
                        options: { modules: true }
                    }
                ],
            },
        ]
    },

    externals: {
        prestashop: 'prestashop'
    },

    devtool: 'source-map',

    plugins: [
        new ExtractTextPlugin({
            filename: '../css/theme.css',
            allChunks: true
        })
    ],

    resolve: {
        extensions: ['*', '.js', '.scss'],
        modules: [path.resolve(__dirname, './src'), 'node_modules']
    }
};


module.exports.plugins = (module.exports.plugins || []).concat([
    new webpack.ProvidePlugin({
            jQuery          : 'jquery',
            $               : 'jquery',
            jquery          : 'jquery',
            'window.jQuery' : 'jquery',
            'window.Tether' : 'tether'
        })
]);


if (process.env.NODE_ENV === 'production'){
    module.exports.plugins.push(

        new webpack.optimize.UglifyJsPlugin({

            sourcemap: true,

            compress: {
                warnings: false
            }
        })

    )
}