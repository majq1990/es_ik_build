ARG ELASTICSEARCH_VERSION=7.17.18

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTICSEARCH_VERSION}

WORKDIR /usr/share/elasticsearch

ENV ES_VERSION=${ELASTICSEARCH_VERSION}
# 这里我们不使用 RUN 来安装插件，而是在 CMD 中执行
CMD ["./bin/elasticsearch-plugin", "install", "--batch", "https://github.com/infinilabs/elasticsearch-analysis-ik/releases/download/v${ES_VERSION}/elasticsearch-analysis-ik-${ES_VERSION}.zip"]
