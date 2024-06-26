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
      identifier = { name = "old-version"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "See LICENSE file";
      maintainer = "chris@code.sc";
      author = "Chris Blake";
      homepage = "";
      url = "";
      synopsis = "A general library for representation and manipulation of versions.";
      description = "Basic versioning library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }