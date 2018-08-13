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
        name = "yeshql-hdbc";
        version = "4.1.0.1";
      };
      license = "MIT";
      copyright = "2015-2017 Tobias Dammers and contributors";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://github.com/tdammers/yeshql";
      url = "";
      synopsis = "YesQL-style SQL database abstraction (HDBC backend)";
      description = "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while\nadding type annotations to turn SQL into well-typed Haskell\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "yeshql-hdbc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yeshql-core)
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yeshql-hdbc)
            (hsPkgs.containers)
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