{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "bin"; version = "0.1.2"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019-2021 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Bin: binary natural numbers.";
      description = "This package provides /binary natural numbers/ (\"Data.Bin\");\nalso utilities to work on the type level with @DataKinds@ (\"Data.Type.Bin\").\n\n@\ndata Bin\n\\    = BZ       -- ^ zero\n\\    | BP BinP  -- ^ non-zero\n\ndata BinP\n\\    = BE       -- ^ one\n\\    | B0 BinP  -- ^ double\n\\    | B1 BinP  -- ^ double plus 1\n@\n\nThere are /ordinals/ in \"Data.Bin.Pos\" module, as well as\nfixed width integers in \"Data.Wrd\".\n\nAnother implementation is at <https://hackage.haskell.org/package/nat>,\nthis differs in naming, and provides promoted variant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."boring" or (errorHandler.buildDepError "boring"))
          (hsPkgs."dec" or (errorHandler.buildDepError "dec"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
        buildable = true;
      };
    };
  }