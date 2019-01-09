{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { documentation = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hs2048"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2014 Taylor Fausak <taylor@fausak.me>";
      maintainer = "taylor@fausak.me";
      author = "Taylor Fausak";
      homepage = "https://github.com/tfausak/hs2048";
      url = "";
      synopsis = "A 2048 clone in Haskell.";
      description = "A <https://github.com/gabrielecirulli/2048 2048> clone in Haskell.\n\nThis implements the game logic as well as a console interface for playing\nit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs.hscolour);
        };
      exes = {
        "hs2048" = {
          depends = [ (hsPkgs.base) (hsPkgs.hs2048) (hsPkgs.random) ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hs2048)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            ];
          };
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.Glob) (hsPkgs.doctest) ];
          };
        "hpc" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.regex-compat) ];
          };
        "haddock" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.regex-compat) ];
          };
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hs2048)
            (hsPkgs.criterion)
            (hsPkgs.hastache)
            (hsPkgs.statistics)
            (hsPkgs.random)
            ];
          };
        };
      };
    }