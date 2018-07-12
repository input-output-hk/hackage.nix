{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lio-simple";
          version = "0.0.0.3";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "hails@scs.stanford.edu";
        author = "Hails team";
        homepage = "http://simple.cx";
        url = "";
        synopsis = "LIO support for the Simple web framework";
        description = "LIO support for the Simple web framework.\nSee the 'lio' and 'simple' packages for more information.";
        buildType = "Simple";
      };
      components = {
        "lio-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.http-types
            hsPkgs.base64-bytestring
            hsPkgs.simple
            hsPkgs.simple-templates
            hsPkgs.lio
            hsPkgs.text
            hsPkgs.unix
          ];
        };
        exes = {
          "lio-simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.simple-templates
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }