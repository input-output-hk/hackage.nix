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
      specVersion = "1.12";
      identifier = { name = "signable-haskell-protoc"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Coingaming <hello@coingaming.io>";
      maintainer = "Ilja Tkachuk <tkachuk.labs@gmail.com>";
      author = "Ilja Tkachuk <tkachuk.labs@gmail.com>";
      homepage = "https://github.com/coingaming/signable#readme";
      url = "";
      synopsis = "Signable instances protoc compiler plugin.";
      description = "You can find documentation at <https://hackage.haskell.org/package/signable-haskell-protoc hackage>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "signable-haskell-protoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-source-gen" or (errorHandler.buildDepError "ghc-source-gen"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
            (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }