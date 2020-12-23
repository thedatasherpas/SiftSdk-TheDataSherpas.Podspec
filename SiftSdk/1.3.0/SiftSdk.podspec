Pod::Spec.new do |spec|
  spec.name         = "SiftSdk"
  spec.version      = "1.3.0"
  spec.summary      = "SiftSdk is a custom SDK build for Comcast."

  spec.description  = <<-DESC
                       SiftSdk is a custom SDK build for Comcast using Snowplow.
                         DESC

  spec.homepage     = "https://Comcast.com"
  spec.license      =  { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }

  spec.author             = { "Lamar Williams III" => "lwilliams@comcast.com" }

  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.2.4"

  spec.source       = { :git => "git@github.com:thedatasherpas/SIFT_SDK_iOS.git", :tag => "#{spec.version}" }

  spec.source_files  = "SiftSdk", "SiftSdk/**/*.{swift}"

  spec.dependency "SnowplowTracker", '1.6.0-1.3.0'
  spec.dependency "JSONSchema", "0.5.1"

end
