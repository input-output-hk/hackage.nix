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
        name = "monad-levels";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "https://github.com/ivan-m/monad-levels";
      url = "";
      synopsis = "Specific levels of monad transformers";
      description = "An automatic way of adding instances to monad classes.";
      buildType = "Simple";
    };
    components = {
      "monad-levels" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.constraints)
        ];
      };
    };
  }