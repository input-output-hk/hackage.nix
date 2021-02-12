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
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hsinspect-lsp"; version = "0.0.4"; };
      license = "GPL-3.0-or-later";
      copyright = "2020 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "LSP interface over the hsinspect binary.";
      description = "Inspect @.hs@ files using the ghc api.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
        build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect.components.exes.hsinspect or (pkgs.buildPackages.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
        buildable = true;
        };
      exes = {
        "hsinspect-lsp" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."haskell-lsp" or (errorHandler.buildDepError "haskell-lsp"))
            (hsPkgs."hsinspect-lsp" or (errorHandler.buildDepError "hsinspect-lsp"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect.components.exes.hsinspect or (pkgs.buildPackages.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hsinspect-lsp" or (errorHandler.buildDepError "hsinspect-lsp"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect.components.exes.hsinspect or (pkgs.buildPackages.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
          buildable = true;
          };
        };
      };
    }