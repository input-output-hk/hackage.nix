{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cmu";
          version = "1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "ramsdell@mitre.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Unification in a Commutative Monoid";
        description = "The unification problem is given the problem\nstatement t =? t\\', find a most general\nsubstitution s such that s(t) = s(t\\') modulo\nthe axioms of a commutative monoid.\nSubstitition s is more general than s\\' if\nthere is a substitition s\\\" such that s\\' =\ns\\\" o s.";
        buildType = "Simple";
      };
      components = {
        "cmu" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
        exes = {
          "cmu" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
        };
      };
    }