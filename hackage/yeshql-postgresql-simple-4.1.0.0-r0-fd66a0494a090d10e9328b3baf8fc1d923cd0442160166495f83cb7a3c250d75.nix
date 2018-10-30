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
        name = "yeshql-postgresql-simple";
        version = "4.1.0.0";
      };
      license = "MIT";
      copyright = "2015-2017 Tobias Dammers and contributors";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://github.com/tdammers/yeshql";
      url = "";
      synopsis = "YesQL-style SQL database abstraction (postgresql-simple backend)";
      description = "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while\nadding type annotations to turn SQL into well-typed Haskell\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yeshql-core)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.postgresql-simple)
          (hsPkgs.template-haskell)
          (hsPkgs.convertible)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.postgresql-simple)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.yeshql-postgresql-simple)
          ];
        };
      };
    };
  }