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
      specVersion = "1.8";
      identifier = {
        name = "wai-middleware-cache";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
      author = "Alexander Dorofeev <aka.spin@gmail.com>";
      homepage = "https://github.com/akaspin/wai-middleware-cache";
      url = "";
      synopsis = "Caching middleware for WAI.";
      description = "This package provides cache middleware and abstract type for\ncreating cache backends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.crypto-conduit)
          (hsPkgs.http-types)
          (hsPkgs.pureMD5)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.wai-middleware-cache)
            (hsPkgs.wai)
            (hsPkgs.bytestring)
            (hsPkgs.wai-test)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }