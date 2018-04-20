{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sdf2p1-parser";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Jung Ko";
        maintainer = "kojung@gmail.com";
        author = "Jung Ko";
        homepage = "https://github.com/kojung/sdf2p1-parser";
        url = "";
        synopsis = "A parser for SDF version 2.1 using Parsec";
        description = "This is a simple parser for the SDF version 2.1 using Parsec.\nRefer to http://www.eda.org/sdf for more information on this file format.";
        buildType = "Simple";
      };
      components = {
        sdf2p1-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
        tests = {
          SDFParserTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.sdf2p1-parser
              hsPkgs.HUnit
              hsPkgs.transformers
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.Cabal
            ];
          };
          SDFQueryTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.sdf2p1-parser
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
              hsPkgs.bytestring
              hsPkgs.Cabal
            ];
          };
        };
      };
    }