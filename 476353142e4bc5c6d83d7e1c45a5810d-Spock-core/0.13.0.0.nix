{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Spock-core";
          version = "0.13.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 - 2017 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://www.spock.li";
        url = "";
        synopsis = "Another Haskell web framework for rapid development";
        description = "Barebones high performance type safe web framework";
        buildType = "Simple";
      };
      components = {
        Spock-core = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.cookie
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.http-types
            hsPkgs.hvect
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.http-api-data
            hsPkgs.old-locale
            hsPkgs.reroute
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.superbuffer
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.vault
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
          ];
        };
        tests = {
          spockcoretests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.http-types
              hsPkgs.monad-control
              hsPkgs.Spock-core
              hsPkgs.reroute
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.wai
            ];
          };
        };
      };
    }