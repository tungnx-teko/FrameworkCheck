# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

$distribution_frameworks = [
"Alamofire",
"CryptoSwift",
"FacebookCore",
"FacebookLogin",
"TekServiceInterfaces",
"BSImagePicker",
"DifferenceKit",
"FittedSheets",
"Kingfisher",
"RealmSwift",
"SkeletonView",
"TekoMediaPreview",
"TekoTracker",
"Toast-Swift",
"Moya",
"RxRelay",
"TripiCommon",
"TripiFlightKit",
"RxSwift",
"RxCocoa",
"ReachabilitySwift",
"IQKeyboardManagerSwift"
]

#post_install do |installer|
#  installer.pods_project.build_configurations.each do |config|
##    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
##    config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
#    if $distribution_frameworks.include?(target.name)
#      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
#    end
#  end
#end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      #      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      if $distribution_frameworks.include?(target.name)
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
      #      if $non_distribution_frameworks.include?(target.name)
      #        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'NO'
      #      end
    end
  end
end

target 'FrameworkCheck' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for FrameworkCheck
  pod 'Cosmos', '18.0'
  pod 'SVProgressHUD', '1.1.3'
  pod 'IQKeyboardManagerSwift', '6.5.0'
  pod 'Toast-Swift', '~> 4.0.1'
  pod 'SDWebImage', '5.1.1'
  pod 'JVFloatLabeledTextField', '1.1.1'
  pod 'MarqueeLabel', '3.2.0'
  pod 'SwiftyBeaver', '1.7'
  pod 'Moya/RxSwift', '~> 14.0'
  pod 'RxCocoa', '~> 5'
  pod 'Alamofire', '~> 5.3.0'
  pod 'SkeletonView'
  pod 'UPCarouselFlowLayout'
  pod 'RealmSwift'

end
