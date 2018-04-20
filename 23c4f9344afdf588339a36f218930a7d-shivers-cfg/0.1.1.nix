{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "shivers-cfg";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@joachim-breitner.de";
        author = "Joachim Breitner";
        homepage = "";
        url = "";
        synopsis = "Implementation of Shivers' Control-Flow Analysis";
        description = "In his 1991 dissertation, Olin Shivers introduces a concept\nof control flow graphs for functional languages, provides an algorithm\nto statically derive a safe approximation of the control flow graph and\nproves this algorithm correct. In our student research project,\nShivers' algorithms and proofs are formalized using the theorem prover\nsystem Isabelle.\n\nThis package contains the Haskell prototype of the Isabelle\nformalization, together with some pretty printing and rendering\nfacilities. It is provided as a reference, not as a ready-to-use library.";
        buildType = "Simple";
      };
      components = {
        shivers-cfg = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.pretty
            hsPkgs.HPDF
            hsPkgs.language-dot
          ];
        };
      };
    }