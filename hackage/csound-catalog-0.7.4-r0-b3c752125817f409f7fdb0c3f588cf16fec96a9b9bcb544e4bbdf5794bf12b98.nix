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
      specVersion = "1.22";
      identifier = { name = "csound-catalog"; version = "0.7.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-catalog";
      url = "";
      synopsis = "a gallery of Csound instruments.";
      description = "A gallery of Csound instruments.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."csound-expression" or (errorHandler.buildDepError "csound-expression"))
          (hsPkgs."csound-sampler" or (errorHandler.buildDepError "csound-sampler"))
          (hsPkgs."sharc-timbre" or (errorHandler.buildDepError "sharc-timbre"))
        ];
        buildable = true;
      };
    };
  }