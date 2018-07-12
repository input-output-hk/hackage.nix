{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tableaux";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pedro Vasconcelos <pbv@ncc.up.pt>";
        author = "Pedro Vasconcelos <pbv@ncc.up.pt>";
        homepage = "";
        url = "";
        synopsis = "An interactive theorem prover based on semantic tableaux";
        description = "This is a simple web-based interactive theorem prover\nusing semantic tableaux for propositional and first-order logic\n(cf. \"First-Order Logic\", Raymond Smullyan, Dover).\nIt allows step-by-step construction of proofs and runs on any\nweb server supporting the CGI interface.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tableaux.cgi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.html
              hsPkgs.parsec
              hsPkgs.cgi
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }