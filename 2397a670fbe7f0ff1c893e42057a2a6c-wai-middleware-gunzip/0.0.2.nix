{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-gunzip";
          version = "0.0.2";
        };
        license = "MPL-2.0";
        copyright = "(C) 2015 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://github.com/twittner/wai-middleware-gunzip";
        url = "";
        synopsis = "WAI middleware to unzip request bodies";
        description = "WAI middleware to transparently unzip request bodies.";
        buildType = "Simple";
      };
      components = {
        "wai-middleware-gunzip" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.streaming-commons
            hsPkgs.wai
          ];
        };
      };
    }