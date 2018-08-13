{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "arrowp";
        version = "0.5.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Ross Paterson <ross@soi.city.ac.uk>";
      homepage = "http://www.haskell.org/arrows/";
      url = "";
      synopsis = "preprocessor translating arrow notation into Haskell 98";
      description = "A preprocessor that reads Haskell with arrow notation\nand outputs Haskell 98.  Note that GHC 6.2 or later has\nbuilt-in support for arrow notation, so if you're only\nusing GHC, you don't need this preprocessor: just rename\nyour arrow module as an ordinary Haskell source file and\ninvoke GHC with the -farrows option.  You'll get better\nerror messages for arrow code, too.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "arrowp" = {
          depends  = [
            (hsPkgs.haskell-src)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }