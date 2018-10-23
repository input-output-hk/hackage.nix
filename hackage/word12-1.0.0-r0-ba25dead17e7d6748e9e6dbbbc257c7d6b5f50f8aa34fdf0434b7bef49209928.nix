{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "word12";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Yu Fukuzawa";
      maintainer = "minpou-primer@gmail.com";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/word12";
      url = "";
      synopsis = "Word12 library.";
      description = "12-bit word type.";
      buildType = "Simple";
    };
    components = {
      "word12" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }