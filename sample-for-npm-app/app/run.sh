# bin/sh
# docker-composeのvolumeが実行されるタイミングはイメージの起動時なので、
# キック動作をシェルスクリプト実行にして、シェルスクリプトの中でvolumeマウント後の動作を書く。

cd /opt/app
npm install
npm run dev
