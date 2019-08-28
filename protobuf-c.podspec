Pod::Spec.new do |s|
  s.name = "protobuf-c"
  s.version = "1.3.2"
  s.summary = "C bindings for Google's Protocol Buffers"
  s.authors = { "Dave Benson" => "" }
  s.source = { :git => "https://github.com/protobuf-c/protobuf-c.git", :tag => "v#{s.version}" }
  s.homepage = "https://github.com/protobuf-c/protobuf-c"
  s.license = { :type => "BSD", :file => "LICENSE"}
  s.source_files = "protobuf-c/*.{h,c}"
  s.platform = :ios, "8.0"
  s.module_map = 'protobuf-c.modulemap'
  s.prepare_command = "printf \"framework module protobuf_c {\\n  umbrella header \\\"protobuf-c.h\\\"\\n\\n  export *\\n  module * { export * }\\n}\" > protobuf-c.modulemap"
  s.prefix_header_contents = "#define HAVE_ALLOCA_H 1",
                             "#define HAVE_MALLOC_H 1",
                             "#define HAVE_SYS_POLL_H 1",
                             "#define HAVE_SYS_SELECT_H 1",
                             "#define HAVE_INTTYPES_H 1",
                             "#define HAVE_SYS_UIO_H 1",
                             "#define HAVE_UNISTD_H 1",
                             "#define HAVE_IO_H 1"
  s.requires_arc = false
  s.xcconfig = { "GCC_WARN_64_TO_32_BIT_CONVERSION" => "NO" }
end
