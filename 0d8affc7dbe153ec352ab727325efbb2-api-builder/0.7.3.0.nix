{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "api-builder";
          version = "0.7.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Fraser Murray 2014";
        maintainer = "fraser.m.murray@gmail.com";
        author = "Fraser Murray";
        homepage = "https://github.com/intolerable/api-builder";
        url = "";
        synopsis = "Library for easily building REST API wrappers in Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        api-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.HTTP
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.api-builder
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          test-io = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.api-builder
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }