{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-proto-lens";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "PLR";
      author = "PLR";
      homepage = "https://github.com/plredmond/servant-proto-lens";
      url = "";
      synopsis = "Servant Content-Type for proto-lens protobuf modules.";
      description = "A type with instances for Accept, MimeRender, and MimeUnrender to use proto-lens protobuf modules with Servant APIs.";
      buildType = "Simple";
    };
    components = {
      "servant-proto-lens" = {
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