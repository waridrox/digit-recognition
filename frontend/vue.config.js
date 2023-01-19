module.exports = {
  lintOnSave: false,
  publicPath: process.env.NODE_ENV === 'production'
    ? '/digit-recognition'
    : '/',
  configureWebpack: {
    experiments: {
      asyncWebAssembly: true
    }
  }
}
