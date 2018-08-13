{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prelude-compat";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Provide Prelude and Data.List with fixed content across GHC versions";
      description = "This package allows you to write warning-free code\nthat compiles with versions of 'base' before and after AMP and FTP,\nthat is, 'base' before and beginning with 4.8, respectively,\nand GHC before and beginning with 7.10, respectively.\nIt serves three purposes:\n\n* Prevent you from name clashes of FTP-Prelude\nwith locally defined functions having names like '<*>', 'join', 'foldMap'.\n\n* Prevent you from redundant import warnings\nif you manually import \"Data.Monoid\" or \"Control.Applicative\".\n\n* Fix list functions to the list type, contrarily to the aim of the FTP.\nThis way you are saved from @length (2,1) == 1@ and @maximum (2,1) == 1@,\nuntil you import @Data.Foldable@.\n\nYou should add\n\n> import Prelude2010\n> import Prelude ()\n\nto your modules.\nThis way, you must change all affected modules.\nIf you want to avoid this\nyou may try the 'prelude2010' package\nor check whether it helps to add\n\n> Default-Extensions: CPP, NoImplicitPrelude\n> CPP-Options: -DPrelude=Prelude2010\n\nto your Cabal file.\n\nIn my opinion, this is the wrong way round.\nThe presented Prelude2010 module should have been the one for GHC-7.10\nand the Prelude with added and generalized list functions\nshould have been an additionally PreludeFTP,\npreferably exported by a separate package\nlike all other alternate Prelude projects.\nBut the purpose of the FTP was to save some import statements\nat the expense of blowing up the 'Foldable' class\nand prevent simple ways to write code that works\nwith GHC version before and starting with GHC-7.10\nand that does not provoke warnings.\n\nRelated packages:\n\n* 'base-compat': The opposite approach -\nMake future function definitions available in older GHC versions.\n\n* 'haskell2010': Defines the Prelude for Haskell 2010.\nUnfortunately, 'haskell2010' is not available anymore since GHC-7.10,\nbecause of the AMP.\n\n* 'numeric-prelude':\nIt is intended to provide a refined numeric class hierarchy\nbut it also provides a non-numeric subset of the Prelude\nthat is more stable than the one of 'base'.";
      buildType = "Simple";
    };
    components = {
      "prelude-compat" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }