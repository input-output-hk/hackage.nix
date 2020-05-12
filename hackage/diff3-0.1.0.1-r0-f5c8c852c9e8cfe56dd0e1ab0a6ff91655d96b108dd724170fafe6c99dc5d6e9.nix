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
      identifier = { name = "diff3"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Oliver Charles";
      maintainer = "Oliver Charles <ollie@ocharles.org.uk>";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/diff3.git";
      url = "";
      synopsis = "Perform a 3-way difference of documents";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          ];
        buildable = true;
        };
      };
    }