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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hls-exactprint-utils"; version = "0.5.0.1"; };
      license = "Apache-2.0";
      copyright = "Sandy Maguire, Hiromi ISHII";
      maintainer = "Sandy Maguire <sandy@sandymaguire.me>, HiromiISHII <konn.jinro@gmail.com>";
      author = "Sandy Maguire, Hiromi ISHII";
      homepage = "https://github.com/haskell/haskell-language-server/hls-exactprint-utils";
      url = "";
      synopsis = "Common utilities to interaction between ghc-exactprint and HLS plugins.";
      description = "Please see the README on GitHub at <https://github.com/haskell/haskell-language-server#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."haskell-lsp-types" or (errorHandler.buildDepError "haskell-lsp-types"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."retrie" or (errorHandler.buildDepError "retrie"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }