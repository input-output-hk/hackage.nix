{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      static = false;
      static-cxx = false;
      llvm = false;
      bounds-checks = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twee-lib";
          version = "2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nicsma@chalmers.se";
        author = "Nick Smallbone";
        homepage = "http://github.com/nick8325/twee";
        url = "";
        synopsis = "An equational theorem prover";
        description = "Twee is an experimental equational theorem prover based on\nKnuth-Bendix completion.\n\nGiven a set of equational axioms and a set of equational\nconjectures it will try to prove the conjectures.\nIt will terminate if the conjectures are true but normally\nfail to terminate if they are false.\n\nThe input problem should be in TPTP format (see\nhttp://www.tptp.org). You can use types and quantifiers, but apart\nfrom that the problem must be equational.\n\nThis package contains only the library part of twee.";
        buildType = "Simple";
      };
      components = {
        twee-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.dlist
            hsPkgs.pretty
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
      };
    }