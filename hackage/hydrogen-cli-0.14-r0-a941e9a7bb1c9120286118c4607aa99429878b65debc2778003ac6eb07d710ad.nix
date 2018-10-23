{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-cli";
        version = "0.14";
      };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-cli/";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "h" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hydrogen-cli-args)
            (hsPkgs.hydrogen-data)
            (hsPkgs.hydrogen-multimap)
            (hsPkgs.hydrogen-parsing)
            (hsPkgs.hydrogen-prelude)
            (hsPkgs.hydrogen-syntax)
          ];
        };
      };
    };
  }