{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "toolshed";
          version = "0.16.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2010-2015 Dr. Alistair Ward";
        maintainer = "mailto <colon> toolshed <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "Ill-defined library.";
        description = "Ill-defined unrelated utilities used by other packages from <http://functionalley.eu>";
        buildType = "Simple";
      };
      components = {
        toolshed = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.QuickCheck
            hsPkgs.random
          ];
        };
        tests = {
          quickCheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.toolshed
            ];
          };
        };
      };
    }