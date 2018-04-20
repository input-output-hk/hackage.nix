{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsql";
          version = "1.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nick Rudnick <nick.rudnick@googlemail.com>";
        author = "Krasimir Angelov <ka2_mail@yahoo.com>";
        homepage = "";
        url = "";
        synopsis = "Database access from Haskell.";
        description = "Simple library for database access from Haskell.";
        buildType = "Simple";
      };
      components = {
        hsql = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
          ];
        };
      };
    }