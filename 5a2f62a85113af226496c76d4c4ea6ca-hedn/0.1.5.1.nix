{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hedn";
          version = "0.1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Alexander Bondarenko";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "https://bitbucket.org/dpwiz/hedn";
        url = "";
        synopsis = "EDN parsing and encoding";
        description = "A EDN parsing and encoding library inspired by Data.Aeson.\n\nBased on specs published at <https://github.com/edn-format/edn>.";
        buildType = "Simple";
      };
      components = {
        hedn = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.stringsearch
            hsPkgs.mtl
            hsPkgs.deepseq
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedn
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.vector
            ];
          };
        };
      };
    }