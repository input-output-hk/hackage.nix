{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16.0";
        identifier = {
          name = "smtps-gmail";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013, Enzo Haussecker. All rights reserved.";
        maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
        author = "Enzo Haussecker <enzo@ucsd.edu>";
        homepage = "https://github.com/enzoh/smtps-gmail";
        url = "";
        synopsis = "Gmail API";
        description = "Send email from your Gmail account using the simple message transfer protocol with transport layer security.";
        buildType = "Simple";
      };
      components = {
        smtps-gmail = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-string
            hsPkgs.bytestring
            hsPkgs.cprng-aes
            hsPkgs.network
            hsPkgs.tls
            hsPkgs.tls-extra
            hsPkgs.utf8-string
          ];
        };
        exes = {
          gmail = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-string
              hsPkgs.bytestring
              hsPkgs.cprng-aes
              hsPkgs.network
              hsPkgs.tls
              hsPkgs.tls-extra
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }