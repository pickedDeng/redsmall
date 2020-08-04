module.exports = {
    publicPath: './', //vueConf.baseUrl, // 根域上下文目录
    outputDir: 'dist', // 构建输出目录
    assetsDir: 'assets', // 静态资源目录 (js, css, img, fonts)
    devServer: {
        open: true,
        port: 8080,
        https: false,
        hotOnly: true,
        proxy: null,
    }
}
