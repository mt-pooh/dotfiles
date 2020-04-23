c = get_config()
# Notebook上でplotを表示できるようにする
c.IPKernelApp.pylab = 'inline'
# 全てのIPから接続を許可
c.NotebookApp.ip = '*'
# 起動時にブラウザを起動させるかの設定
c.NotebookApp.open_browser = False
# ポート指定
c.NotebookApp.port = 8989
# パスワード
c.NotebookApp.password = u'sha1:48e54e303bab:a20a50665d5775ab574a5b77b672bc0b1beeec03'
