{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "FilePather";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://bitbucket.org/dibblego/filepather/";
        url = "";
        synopsis = "Functions on System.FilePath";
        description = "Functions over @System.FilePath@ including a find function for recursing down directories.\n\n/This package is similar to the filemanip package but without the unix and mtl dependencies./\n\nUsage example:\n\n@\nfindHere always (extensionEq \"hs\") >>= mapM_ putStrLn\n./Setup.hs\n./System/FilePath/FilePather.hs\n@";
        buildType = "Simple";
      };
      components = {
        "FilePather" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ];
        };
      };
    }