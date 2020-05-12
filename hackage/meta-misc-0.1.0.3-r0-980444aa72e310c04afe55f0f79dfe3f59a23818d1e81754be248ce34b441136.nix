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
      specVersion = "1.18";
      identifier = { name = "meta-misc"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "https://github.com/bairyn/meta-misc";
      url = "";
      synopsis = "Utility library providing miscellaneous meta-programming utilities.";
      description = "Utility library providing miscellaneous meta-programming utilities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          ];
        buildable = true;
        };
      };
    }