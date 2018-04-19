{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ironforge";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marvin.cohrs@gmx.net";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "A technical demo for Antisplice.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          ironforge = {
            depends  = [
              hsPkgs.base
              hsPkgs.chatty
              hsPkgs.antisplice
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }