{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22.0";
        identifier = {
          name = "bizzlelude";
          version = "1.1.0";
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
        "bizzlelude" = {
          depends  = [
            hsPkgs.base-noprelude
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.text
          ];
        };
      };
    }