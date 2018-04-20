{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "solga";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright (C) 2016 Patrick Chilton";
        maintainer = "chpatrick@gmail.com";
        author = "Patrick Chilton";
        homepage = "https://github.com/chpatrick/solga";
        url = "";
        synopsis = "Simple typesafe web routing";
        description = "A library for easily specifying web APIs and implementing them in a type-safe way.";
        buildType = "Simple";
      };
      components = {
        solga = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.resourcet
            hsPkgs.safe-exceptions
          ];
        };
        tests = {
          solga-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.solga
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.aeson
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.hspec-wai-json
              hsPkgs.http-types
              hsPkgs.unordered-containers
              hsPkgs.hashable
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }