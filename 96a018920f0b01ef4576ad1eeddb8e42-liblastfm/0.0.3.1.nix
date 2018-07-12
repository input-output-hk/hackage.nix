{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "liblastfm";
          version = "0.0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
        author = "Matvey Aksenov, Dmitry Malikov";
        homepage = "";
        url = "";
        synopsis = "Wrapper to Lastfm API";
        description = "Simple but complete wrapper to Lastfm API. Can send some stuff and receive reponses from Lastfm. JSON/XML parsing is an exercise for the user.";
        buildType = "Simple";
      };
      components = {
        "liblastfm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.curl
            hsPkgs.pureMD5
            hsPkgs.urlencoded
            hsPkgs.aeson
            hsPkgs.xml
            hsPkgs.utf8-string
          ];
        };
      };
    }