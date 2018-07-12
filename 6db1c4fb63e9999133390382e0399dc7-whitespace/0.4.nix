{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "whitespace";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "harold@hotelling.net";
        author = "Edwin Brady (e.c.brady@durham.ac.uk)";
        homepage = "https://github.com/haroldl/whitespace-nd";
        url = "";
        synopsis = "Whitespace, an esoteric programming language.";
        description = "Whitespace, an esoteric programming language.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "wspace" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.random
            ];
          };
        };
      };
    }