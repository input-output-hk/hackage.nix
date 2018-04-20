{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sync";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "A fast implementation of synchronous channels with a CML-like API";
        description = "This is a short implementation of synchronous channels\nwith choice, based on the code described at <http://chplib.wordpress.com/2010/03/04/choice-over-events-using-stm/>";
        buildType = "Simple";
      };
      components = {
        sync = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }