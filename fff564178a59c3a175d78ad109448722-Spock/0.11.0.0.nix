{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Spock";
          version = "0.11.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 - 2016 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://www.spock.li";
        url = "";
        synopsis = "Another Haskell web framework for rapid development";
        description = "This toolbox provides everything you need to get a quick start into web hacking with haskell:\n\n* fast routing\n\n* middleware\n\n* json\n\n* sessions\n\n* cookies\n\n* database helper\n\n* csrf-protection\n\nA tutorial is available at <https://www.spock.li/tutorial/ spock.li>\nFull documenation is availale <https://spockdocs.s3.eu-central-1.amazonaws.com/Spock-0.11.0.0/Web-Spock.html here>";
        buildType = "Simple";
      };
      components = {
        Spock = {
          depends  = [
            hsPkgs.Spock-core
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.focus
            hsPkgs.hashable
            hsPkgs.hvect
            hsPkgs.http-types
            hsPkgs.list-t
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.reroute
            hsPkgs.resource-pool
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.stm-containers
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.vault
            hsPkgs.wai
          ];
        };
        tests = {
          spocktests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.Spock
              hsPkgs.Spock-core
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vault
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }