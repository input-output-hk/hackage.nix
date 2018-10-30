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
        name = "hopencc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mno2.csie@gmail.com";
      author = "Paul Meng";
      homepage = "https://github.com/MnO2/hopencc";
      url = "";
      synopsis = "Haskell binding to libopencc";
      description = "Haskell binding to libopencc";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ];
        pkgconfig = [
          (pkgconfPkgs.opencc)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "test-opencc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.hopencc)
          ];
        };
      };
    };
  }