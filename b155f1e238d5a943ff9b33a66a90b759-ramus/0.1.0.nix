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
        name = "ramus";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Nikita Tchayka";
      author = "";
      homepage = "https://github.com/NickSeagull/ramus#readme";
      url = "";
      synopsis = "Elm signal system for Haskell";
      description = "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.";
      buildType = "Simple";
    };
    components = {
      "ramus" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "ramus-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ramus)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-io)
          ];
        };
      };
      benchmarks = {
        "ramus-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ramus)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }