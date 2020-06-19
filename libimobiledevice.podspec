Pod::Spec.new do |s|

    s.name = "libimobiledevice"
    s.version = "1.0.0" 
    s.summary = "A library to communicate with services of Apple iOS devices using native protocols."
   
   s.homepage = "https://github.com/wtsnz/libimobiledevice" 
   s.license = {:type => 'GPL', :file => 'COPYING'}
   
   s.author = 'Will Townsend' 
   s.platform = :osx, '10.10' 
   s.source = { :git => "https://github.com/wtsnz/libimobiledevice.git", :tag => "v#{s.version}"}
   s.header_mappings_dir = 'include/'
   s.preserve_paths = 'common/', 'src/*.h', 'include/libimobiledevice/*.h'
   s.source_files = 'src/*.{h,c}', 'include/*.h', 'include/libimobiledevice/*.h', 'common/*.{h,c}'
   s.public_header_files =  'include/**/*.h'

   s.dependency 'OpenSSL-Apple'
   s.dependency 'libplist'
   s.dependency 'libusbmuxd'

   s.xcconfig = {"GCC_PREPROCESSOR_DEFINITIONS" => 'HAVE_OPENSSL HAVE_VASPRINTF HAVE_ASPRINTF HAVE_STPCPY STRIP_DEBUG_CODE', "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/libplist/include/" "${PODS_ROOT}/libimobiledevice/" "${PODS_ROOT}/usbmuxd/**" "${PODS_ROOT}/libimobiledevice/include/"'}
   
end