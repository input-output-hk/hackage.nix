{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "alpino-tools";
          version = "0.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright 2010-2012 Daniël de Kok";
        maintainer = "Daniël de Kok <me@danieldk.eu>";
        author = "Daniël de Kok <me@danieldk.eu>";
        homepage = "http://github.com/danieldk/alpino-tools";
        url = "";
        synopsis = "Alpino data manipulation tools";
        description = "Tools for manipulating data for the Alpino parser for Dutch.";
        buildType = "Simple";
      };
      components = {
        "alpino-tools" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.utf8-string
            hsPkgs.bytestring-lexing
            hsPkgs.conduit
            hsPkgs.MonadRandom
            hsPkgs.random-shuffle
            hsPkgs.hexpat-pickle
            hsPkgs.resourcet
            hsPkgs.rosezipper
            hsPkgs.mtl
          ];
        };
        exes = {
          "at_model_rescore_data" = {
            depends  = [
              hsPkgs.base
              hsPkgs.alpino-tools
              hsPkgs.conduit
            ];
          };
          "at_model_filter_data" = {
            depends  = [
              hsPkgs.base
              hsPkgs.alpino-tools
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.utf8-string
            ];
          };
          "at_model_oracle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.alpino-tools
              hsPkgs.conduit
            ];
          };
          "at_model_random_sample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.alpino-tools
              hsPkgs.conduit
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.MonadRandom
            ];
          };
          "at_model_statistics_data" = {
            depends  = [
              hsPkgs.base
              hsPkgs.alpino-tools
              hsPkgs.conduit
            ];
          };
        };
      };
    }