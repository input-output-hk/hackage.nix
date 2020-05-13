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
      identifier = { name = "shake-ats"; version = "1.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/shake-ats#readme";
      url = "";
      synopsis = "Utilities for building ATS projects with shake";
      description = "Various helper functions for building [ATS](http://www.ats-lang.org/) with the [shake](http://shakebuild.com/) library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."language-ats" or (errorHandler.buildDepError "language-ats"))
          (hsPkgs."shake-ext" or (errorHandler.buildDepError "shake-ext"))
          (hsPkgs."hs2ats" or (errorHandler.buildDepError "hs2ats"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dependency" or (errorHandler.buildDepError "dependency"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }