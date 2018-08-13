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
        name = "ghc-prof-aeson-flamegraph";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018, Mateusz Kowalczyk";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/ghc-prof-aeson-flamegraph#readme";
      url = "";
      synopsis = "Turn GHC `-pj` profiling output into FlameGraph format.";
      description = "Please see the README on Github at <https://github.com/Fuuzetsu/ghc-prof-aeson-flamegraph#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-prof-aeson-flamegraph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ghc-prof-aeson)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }