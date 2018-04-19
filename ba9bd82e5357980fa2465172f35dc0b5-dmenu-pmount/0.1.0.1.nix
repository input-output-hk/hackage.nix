{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dmenu-pmount";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Hannes Saffrich";
        maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
        author = "Hannes Saffrich";
        homepage = "https://github.com/m0rphism/haskell-dmenu-pmount";
        url = "";
        synopsis = "Mounting and unmounting linux devices as user with dmenu and pmount.";
        description = "See README.md file.";
        buildType = "Custom";
      };
      components = {
        exes = {
          dmenu-pmount = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.dmenu
            ];
          };
        };
      };
    }