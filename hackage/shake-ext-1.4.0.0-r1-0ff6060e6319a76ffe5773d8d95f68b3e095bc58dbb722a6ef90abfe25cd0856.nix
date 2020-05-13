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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "shake-ext"; version = "1.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/shake-ext";
      url = "";
      synopsis = "Helper functions for linting with shake ";
      description = "This package provides several linters out of the box, as well as functionality for building ATS source files with [shake](http://shakebuild.com/).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."language-ats" or (errorHandler.buildDepError "language-ats"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }