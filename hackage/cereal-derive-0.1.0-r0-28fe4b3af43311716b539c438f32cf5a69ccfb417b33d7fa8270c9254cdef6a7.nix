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
      specVersion = "1.8";
      identifier = { name = "cereal-derive"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Jared Hance <jaredhance@gmail.com>";
      author = "Jared Hance";
      homepage = "";
      url = "";
      synopsis = "Automatic deriving of Binary using GHC.Generics";
      description = "This package provides deriveGet and derivePut which\ncan be used to quickly create an instance of Serialize for any type which\nimplements Generic. Naturally, this can be used with -XDeriveGeneric to not     have to write any boilerplate code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }