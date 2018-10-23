{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal-audit";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/cabal-audit.git";
      url = "";
      synopsis = "Check how up-to-date your .cabal dependencies are.";
      description = "Check how up-to-date your .cabal dependencies are.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-audit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }