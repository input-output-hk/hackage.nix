{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "radix";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "https://github.com/thomaseding/radix";
        url = "";
        synopsis = "Command-line tool for emitting numbers in various bases.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "radix" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
            ];
          };
        };
      };
    }