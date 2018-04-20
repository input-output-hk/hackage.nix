{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "shelly";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Greg Weber <greg@gregweber.info>";
        author = "Greg Weber, Petr Rockai";
        homepage = "https://github.com/yesodweb/Shelly.hs";
        url = "";
        synopsis = "shell-like (systems) programming in Haskell";
        description = "Shelly is a package provides a single module for convenient\nsystems programming in Haskell, similar in spirit to POSIX\nshells.\n\n* Shelly is aimed at getting things done rather than\nbeing a demonstration of elegance.\n\n* Shelly maintains its own environment, making it thread-safe.\n\n* Shelly is modern. It uses Text and system-filepath/system-fileio\n\nThese are all in contrast to HSH. Elegance in HSH comes from polymorphic input and output.\n\nShelly is a fork of Shellish that features low memory usage, bug fixes, and modernization";
        buildType = "Simple";
      };
      components = {
        shelly = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.text
            hsPkgs.unix-compat
            hsPkgs.system-filepath
            hsPkgs.system-fileio
          ];
        };
      };
    }