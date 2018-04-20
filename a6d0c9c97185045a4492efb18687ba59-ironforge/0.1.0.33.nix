{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ironforge";
          version = "0.1.0.33";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marvin.cohrs@gmx.net";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "A technical demo for Antisplice.";
        description = "This is an example dungeon on top of Antisplice.";
        buildType = "Simple";
      };
      components = {
        ironforge = {
          depends  = [
            hsPkgs.base
            hsPkgs.chatty
            hsPkgs.chatty-utils
            hsPkgs.antisplice
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        exes = {
          ironforge = {
            depends  = [
              hsPkgs.base
              hsPkgs.chatty
              hsPkgs.chatty-utils
              hsPkgs.antisplice
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }