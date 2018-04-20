{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dmenu-pkill";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Hannes Saffrich";
        maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
        author = "Hannes Saffrich";
        homepage = "https://github.com/m0rphism/haskell-dmenu-pkill";
        url = "";
        synopsis = "dmenu script for killing applications. Sortable by process id or CPU/MEM usage.";
        description = "See README.md file.";
        buildType = "Custom";
      };
      components = {
        exes = {
          dmenu-pkill = {
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