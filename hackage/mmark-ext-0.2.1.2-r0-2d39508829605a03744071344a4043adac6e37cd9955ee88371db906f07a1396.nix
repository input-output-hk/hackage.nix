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
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "mmark-ext"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mmark-md/mmark-ext";
      url = "";
      synopsis = "Commonly useful extensions for the MMark markdown processor";
      description = "Commonly useful extensions for the MMark markdown processor. Click on\n\"Text.MMark.Extension.Common\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.4") (hsPkgs."ghc-syntax-highlighter" or (errorHandler.buildDepError "ghc-syntax-highlighter"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
            (hsPkgs."mmark-ext" or (errorHandler.buildDepError "mmark-ext"))
            (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }