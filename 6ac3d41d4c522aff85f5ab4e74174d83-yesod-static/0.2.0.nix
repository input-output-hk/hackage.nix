{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-static";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Static file serving subsite for Yesod Web Framework.";
        description = "";
        buildType = "Simple";
      };
      components = {
        yesod-static = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.yesod-core
            hsPkgs.base64-bytestring
            hsPkgs.pureMD5
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.wai-app-static
            hsPkgs.text
          ];
        };
      };
    }