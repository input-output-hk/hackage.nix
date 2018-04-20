{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "help-esb";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alex.martin@help.com";
        author = "Alexander Martin";
        homepage = "https://github.com/helpdotcom/help-esb.hs";
        url = "";
        synopsis = "A Haskell client for the Help.com team's ESB.";
        description = "A Haskell client for the Help.com team's ESB.";
        buildType = "Simple";
      };
      components = {
        help-esb = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.MissingH
            hsPkgs.uuid
            hsPkgs.aeson
            hsPkgs.bytestring
          ];
        };
      };
    }