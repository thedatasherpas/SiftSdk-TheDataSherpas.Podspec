COMCAST_SIFT_ENDPOINT="git@github.comcast.com:ProductAnalyticsBehaviorScience/sift-ios-sdk.git"
COMCAST_SNOWPLOW_ENDPOINT="git@github.comcast.com:ProductAnalyticsBehaviorScience/snowplow-ios-tracker.git"
COMCAST_JSONSCHEMA_ENDPOINT="git@github.comcast.com:ProductAnalyticsBehaviorScience/JSONSchema.swift.git"

TDS_SIFT_ENDPOINT="git@github.com:thedatasherpas/SIFT_SDK_iOS.git"
TDS_SNOWPLOW_ENDPOINT="git@github.com:thedatasherpas/snowplow-objc-tracker.git"
TDS_JSONSCHEMA_ENDPOINT="git@github.com:thedatasherpas/JSONSchema.swift.git"

if [ "$1" = "comcast" ];then
  find . -name '*.podspec' -print0 | xargs -0 sed -i "" "s|$TDS_SIFT_ENDPOINT|$COMCAST_SIFT_ENDPOINT|g"
  find . -name '*.podspec' -print0 | xargs -0 sed -i "" "s|$TDS_SNOWPLOW_ENDPOINT|$COMCAST_SNOWPLOW_ENDPOINT|g"
  find . -name '*.podspec' -print0 | xargs -0 sed -i "" "s|$TDS_JSONSCHEMA_ENDPOINT|$COMCAST_JSONSCHEMA_ENDPOINT|g"
  echo "Repos pointing to $1"
elif [ "$1" = "tds" ]; then
  find . -name '*.podspec' -print0 | xargs -0 sed -i "" "s|$COMCAST_SIFT_ENDPOINT|$TDS_SIFT_ENDPOINT|g"
  find . -name '*.podspec' -print0 | xargs -0 sed -i "" "s|$COMCAST_SNOWPLOW_ENDPOINT|$TDS_SNOWPLOW_ENDPOINT|g"
  find . -name '*.podspec' -print0 | xargs -0 sed -i "" "s|$COMCAST_JSONSCHEMA_ENDPOINT|$TDS_JSONSCHEMA_ENDPOINT|g"
  echo "Repos pointing to $1"
else
  echo "Incorrect Environment Variable $1 please enter comcast or tds"
fi;
echo "done"
