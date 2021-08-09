#!/bin/sh
aws s3 sync content s3://ja-virtual-religion-web/ --profile wktk_blog
aws cloudfront create-invalidation --profile wktk_blog --distribution-id E1NWP27GBK6PY2 --paths "/*"
