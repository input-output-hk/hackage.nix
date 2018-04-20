{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Plural";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 Andy Stewart";
        maintainer = "lazycat.manatee@gmail.com";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Pluralize English words";
        description = "Pluralize English words";
        buildType = "Simple";
      };
      components = {
        exes = {
          plural = {
            depends  = [
              hsPkgs.containers
              hsPkgs.regex-tdfa
              hsPkgs.base
            ];
          };
        };
      };
    }