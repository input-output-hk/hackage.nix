{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "api-builder";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Fraser Murray 2014";
        maintainer = "fraser.m.murray@gmail.com";
        author = "Fraser Murray";
        homepage = "";
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
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }