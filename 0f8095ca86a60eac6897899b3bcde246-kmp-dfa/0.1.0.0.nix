{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kmp-dfa";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paolo.veronelli@gmail.com";
        author = "paolo veronelli";
        homepage = "https://github.com/paolino/kmp-dfa";
        url = "";
        synopsis = "KMP algorithm implementation based on Deterministic Finite State Automata";
        description = "";
        buildType = "Simple";
      };
      components = {
        kmp-dfa = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }