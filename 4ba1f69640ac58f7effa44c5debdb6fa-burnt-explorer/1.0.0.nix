{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "burnt-explorer";
          version = "1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "krzysztof.jurewicz@gmail.com";
        author = "Krzysztof Jurewicz";
        homepage = "https://gitlab.com/KrzysiekJ/burnt-explorer";
        url = "";
        synopsis = "List OP_RETURN cryptocurrency transaction outputs.";
        description = "This unsophisticated application prints all OP_RETURN transaction\noutputs in a given block range.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "burnt-explorer" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.aeson
              hsPkgs.bitcoin-script
              hsPkgs.bytestring
              hsPkgs.scientific
            ];
          };
        };
      };
    }