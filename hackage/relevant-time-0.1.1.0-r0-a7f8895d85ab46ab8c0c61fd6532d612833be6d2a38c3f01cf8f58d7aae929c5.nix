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
      specVersion = "1.10";
      identifier = { name = "relevant-time"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "copyright (c) Layer 3 Communications, Daniel Cartwright ";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/relevant-time.git";
      url = "";
      synopsis = "humanised relevant time";
      description = "Humans tend to think of time relative to a fixed point.\nThis library offers a simple datatype, 'RelevantTime',\nwhich captures the logic behind that idea.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."torsor" or (errorHandler.buildDepError "torsor"))
        ];
        buildable = true;
      };
    };
  }