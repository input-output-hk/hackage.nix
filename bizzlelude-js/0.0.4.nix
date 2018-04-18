{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22.0";
        identifier = {
          name = "bizzlelude-js";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jason.bertsche@gmail.com";
        author = "Jason Bertsche";
        homepage = "http://github.com/TheBizzle";
        url = "";
        synopsis = "A lousy Prelude replacement by a lousy dude";
        description = "A lousy Prelude replacement by a lousy dude.  Imports common things while trying to avoid importing things could cause naming conflicts.  Favors `Text` over `String`.  Wants using `IO` to be painful.";
        buildType = "Simple";
      };
      components = {
        bizzlelude-js = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
          ];
        };
      };
    }