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
      identifier = { name = "inliterate"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomn@diffusionkinetics.com";
      author = "Tom Nielsen";
      homepage = "https://github.com/diffusionkinetics/open/inliterate";
      url = "";
      synopsis = "Interactive literate programming";
      description = "Evaluate markdown code blocks to show the results of running the code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cheapskate" or (errorHandler.buildDepError "cheapskate"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."plotlyhs" or (errorHandler.buildDepError "plotlyhs"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."lucid-extras" or (errorHandler.buildDepError "lucid-extras"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
        ];
        buildable = true;
      };
      exes = {
        "inlitpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inliterate" or (errorHandler.buildDepError "inliterate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-inliterate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inliterate" or (errorHandler.buildDepError "inliterate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "test-inliterate-pp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inliterate" or (errorHandler.buildDepError "inliterate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = false;
        };
      };
    };
  }