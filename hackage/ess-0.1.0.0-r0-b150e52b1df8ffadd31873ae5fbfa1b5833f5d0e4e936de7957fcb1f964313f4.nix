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
        name = "ess";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael.o.church@gmail.com";
      author = "Michael Church";
      homepage = "https://github.com/michaelochurch/ess";
      url = "";
      synopsis = "The type-level S combinator in Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ess" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }