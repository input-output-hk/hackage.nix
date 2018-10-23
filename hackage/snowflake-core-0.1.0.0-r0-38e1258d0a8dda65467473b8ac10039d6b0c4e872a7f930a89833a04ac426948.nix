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
        name = "snowflake-core";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 KaiJia";
      maintainer = "jiakai0419@gmail.com";
      author = "KaiJia";
      homepage = "https://github.com/jiakai0419/snowflake#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "snowflake-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time-exts)
        ];
      };
      tests = {
        "snowflake-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.snowflake-core)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }