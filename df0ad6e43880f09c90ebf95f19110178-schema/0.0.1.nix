{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "schema";
          version = "0.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright (c) 2016, Iphigenia Df";
        maintainer = "Iphigenia Df <iphydf@gmail.com>";
        author = "Iphigenia Df <iphydf@gmail.com>";
        homepage = "https://toktok.github.io/";
        url = "";
        synopsis = "Encoding-independent schemas for Haskell data types.";
        description = "A Haskell implementation of encoding-independent schemas.";
        buildType = "Simple";
      };
      components = {
        schema = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.schema
            ];
          };
        };
      };
    }