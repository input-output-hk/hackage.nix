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
        name = "yeshql";
        version = "2.0.0.0";
      };
      license = "MIT";
      copyright = "2015-2016 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "YesQL-style SQL database abstraction";
      description = "Use quasi-quotations to write SQL in SQL, while at the same time\nadding type annotations to turn them into well-typed Haskell\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.convertible)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yeshql)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.HDBC)
          ];
        };
      };
    };
  }