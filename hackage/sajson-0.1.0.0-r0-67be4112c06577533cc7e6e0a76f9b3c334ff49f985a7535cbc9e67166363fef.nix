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
        name = "sajson";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2017 Chad Austin\n(c) 2017 Zhouyu Qian";
      maintainer = "qzy@qzy.io";
      author = "Chad Austin, Zhouyu Qian";
      homepage = "https://github.com/kccqzy/haskell-sajson#readme";
      url = "";
      synopsis = "Fast JSON parsing powered by Chad Austin's sajson library";
      description = "A fast JSON parsing library that is faster than aeson.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
        ];
        libs = [ (pkgs."stdc++") ];
      };
      exes = {
        "sajson-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sajson)
            (hsPkgs.criterion)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "sajson-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sajson)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }