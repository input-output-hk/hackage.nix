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
      identifier = { name = "shake-ats"; version = "1.10.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
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
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dependency" or (errorHandler.buildDepError "dependency"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."shake-cabal" or (errorHandler.buildDepError "shake-cabal"))
          (hsPkgs."shake-c" or (errorHandler.buildDepError "shake-c"))
          (hsPkgs."cdeps" or (errorHandler.buildDepError "cdeps"))
        ];
        buildable = true;
      };
    };
  }