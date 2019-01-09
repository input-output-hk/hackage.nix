{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsudoku"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "marcelmoosbrugger@gmail.com";
      author = "Marcel Moosbrugger";
      homepage = "https://github.com/marcelmoosbrugger/hsudoku";
      url = "";
      synopsis = "Sudoku game with a GTK3 interface";
      description = "This package realizes a graphical GTK3 sudoku game. Moreover it\nprovides modules for loading and solving sudoku grids.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.HandsomeSoup)
          (hsPkgs.hxt)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-gtk)
          ];
        };
      exes = {
        "hsudoku" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.HandsomeSoup)
            (hsPkgs.hxt)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-gtk)
            (hsPkgs.hsudoku)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.HandsomeSoup)
            (hsPkgs.hxt)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-gtk)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hsudoku)
            ];
          };
        };
      };
    }