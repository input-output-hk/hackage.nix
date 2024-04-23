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
      identifier = { name = "portray-diff"; version = "0.1.1"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Google LLC; 2022 Andrew Pritchard";
      maintainer = "Reiner Pope <reinerp@google.com>, Andrew Pritchard <awpritchard@gmail.com>";
      author = "Reiner Pope <reinerp@google.com>, Andrew Pritchard <awpritchard@gmail.com>";
      homepage = "https://github.com/awpr/portray#readme";
      url = "";
      synopsis = "Pretty structural diffs between two values";
      description = "This uses @GHC.Generics@ to provide structural diffs between two values in\npretty-printed form.  This is primarily useful for test assertions and manual\ninspection of values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
        ];
        buildable = true;
      };
    };
  }