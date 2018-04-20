{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-eventsource";
          version = "3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Chris Smith, Mathias Biilmann Christensen";
        homepage = "http://www.yesodweb.com/book/web-application-interface";
        url = "";
        synopsis = "WAI support for server-sent events (deprecated)";
        description = "Since WAI 3.0, this code has been merged into wai-extra.";
        buildType = "Simple";
      };
      components = {
        wai-eventsource = {
          depends  = [ hsPkgs.wai ];
        };
      };
    }