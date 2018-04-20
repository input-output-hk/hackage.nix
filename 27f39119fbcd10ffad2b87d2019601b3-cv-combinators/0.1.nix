{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cv-combinators";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Noam Lewis <jones.noamle@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Functional Combinators for Computer Vision";
        description = "Initial version; using HOpenCV as a backend";
        buildType = "Simple";
      };
      components = {
        cv-combinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.HOpenCV
          ];
        };
        exes = {
          test-cv-combinators = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }