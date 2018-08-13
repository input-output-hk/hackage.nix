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
        name = "kmp-dfa";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paolo.veronelli@gmail.com";
      author = "paolo veronelli";
      homepage = "https://github.com/paolino/kmp-dfa";
      url = "";
      synopsis = "KMP algorithm implementation, based on Deterministic Finite State Automata";
      description = "";
      buildType = "Simple";
    };
    components = {
      "kmp-dfa" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.kmp-dfa)
          ];
        };
      };
    };
  }