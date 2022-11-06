# ベースとなるイメージの指定（rubyのバージョン3.0.3を指定）
FROM ruby:2.7.2
 
# ビルド時に実行するコマンドの指定
# インストール可能なパッケージの一覧の更新
RUN apt-get update -qq \
# パッケージのインストール（nodejs、postgresql-client、npmを指定）
# libmysqlclient-dev
&& apt-get install -y nodejs default-libmysqlclient-dev npm  \
&& rm -rf /var/lib/apt/lists/* \
&& npm install --global yarn
 
# 作業ディレクトリの指定
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle config set --global force_ruby_platform true

RUN bundle install
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
