{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "utf8-prelude";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Péter Diviánszky";
        maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
        author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
        homepage = "";
        url = "";
        synopsis = "Prelude and System.IO with UTF8 text I/O";
        description = "utf8-prelude provides variants of \"Prelude\" and \"System.IO\" using UTF8 text I/O operations, making\nUTF8 text I/O even simpler.\n\nThree simple steps to switch to UTF8 with your Haskell code:\n\n* In all modules import Prelude explicitly and replace every occurrence of \"Prelude\" with \"UTF8Prelude\".\n\n* Use the NoImplicitPrelude language extension.\n\n* In all modules replace every occurrence of \"System.IO\" with \"System.UTF8IO\".\n\nutf8-prelude also provides a basic testing tool:\nutf8-test tests the functions readFile, writeFile and putStrLn.\nNote: utf8-test creates a file named writeFile_test.txt in the current working directory.\n\nutf8-prelude is based on utf8-string:\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/utf8-string/index.html>\n\nThis package will be obsolate with GHC if GHC will have porper unicode support for text I/O.\nIt is planned beyond GHC 6.10:\n<http://hackage.haskell.org/trac/ghc/wiki/Status/Releases>";
        buildType = "Simple";
      };
      components = {
        "utf8-prelude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.utf8-string
          ];
        };
        exes = { "utf8-test" = {}; };
      };
    }