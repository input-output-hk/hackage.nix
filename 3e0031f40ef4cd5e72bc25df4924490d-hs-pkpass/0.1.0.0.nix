{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hs-pkpass";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "geva@humac.com";
        author = "Vincent Ambo";
        homepage = "https://github.com/tazjin/hs-pkpass";
        url = "";
        synopsis = "A library for Passbook pass creation & signing";
        description = "A Haskell library for type-safe creation of Passbook passes and signing through Apple's signpass tool.";
        buildType = "Simple";
      };
      components = {
        hs-pkpass = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.conduit
            hsPkgs.filesystem-conduit
            hsPkgs.text
            hsPkgs.uuid
            hsPkgs.shelly
            hsPkgs.directory
            hsPkgs.random
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.shakespeare-text
          ];
        };
      };
    }