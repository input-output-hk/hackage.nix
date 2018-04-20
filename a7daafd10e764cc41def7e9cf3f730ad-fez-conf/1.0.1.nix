{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fez-conf";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://ui3.info/d/proj/fez-conf.html";
        url = "";
        synopsis = "Simple functions for loading config files";
        description = "Simple functions for loading config files";
        buildType = "Simple";
      };
      components = {
        fez-conf = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.regex-compat
          ];
        };
      };
    }