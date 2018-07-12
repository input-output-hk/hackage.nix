{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HLearn-algebra";
          version = "0.1.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "";
        url = "";
        synopsis = "Algebraic foundation for homomorphic learning";
        description = "This module contains the algebraic basis for the HLearn library.  It is separated out in it's own library because it contains routines that may be useful to others.  In particular, it contains methods for automatically converting algorithms into online/parallel versions, and its structure is slightly more modular (although much less complete) than other algebra packages.";
        buildType = "Simple";
      };
      components = {
        "HLearn-algebra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ConstraintKinds
            hsPkgs.semigroups
            hsPkgs.parallel
            hsPkgs.deepseq
            hsPkgs.containers
          ];
        };
      };
    }