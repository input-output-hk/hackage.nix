{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-proto-lens";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "plredmond@gmail.com";
      author = "PLR";
      homepage = "https://github.com/plredmond/servant-proto-lens";
      url = "";
      synopsis = "Servant Content-Type for proto-lens protobuf modules.";
      description = "Small glue-code module for easing the use of servant APIs with protobuf.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.proto-lens)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "servant-proto-lens-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.async)
            (hsPkgs.data-default-class)
            (hsPkgs.http-client)
            (hsPkgs.lens)
            (hsPkgs.proto-lens)
            (hsPkgs.proto-lens-protobuf-types)
            (hsPkgs.servant-client)
            (hsPkgs.servant-proto-lens)
            (hsPkgs.servant-server)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }