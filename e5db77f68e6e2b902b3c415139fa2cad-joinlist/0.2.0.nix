{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "joinlist";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Join list - symmetric list type";
        description = "A JoinList - a list type with with cheap catenation.\nCurrently somewhat /minimal/.\n\nChangelog\n\n0.2.0 - more operations and some bugfixes (toList...), @wrap@\nrenamed to @singleton@.";
        buildType = "Simple";
      };
      components = {
        joinlist = {
          depends  = [
            hsPkgs.base
            hsPkgs.dlist
          ];
        };
      };
    }