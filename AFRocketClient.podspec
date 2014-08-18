Pod::Spec.new do |s|
  s.name     = 'AFRocketClient'
  s.version  = '1.0'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking Client for Server sent events'
  s.homepage = 'https://github.com/AFNetworking/AFRocketClient'
  s.author   = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/wendelllamtofu/AFRocketClient' }
  s.source_files = 'AFRocketClient/*.{h,m}'
  s.requires_arc = true
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.7'
  s.dependency 'AFNetworking', '~> 2.3.1'
end
