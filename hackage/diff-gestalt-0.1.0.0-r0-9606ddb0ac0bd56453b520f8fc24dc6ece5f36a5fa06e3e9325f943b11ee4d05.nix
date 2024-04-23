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
      identifier = { name = "diff-gestalt"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "none";
      maintainer = "chrismwendt@gmail.com";
      author = "Chris Wendt";
      homepage = "http://github.com/chrismwendt/diff-gestalt";
      url = "";
      synopsis = "A diff algorithm based on recursive longest common substrings";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."string-similarity" or (errorHandler.buildDepError "string-similarity"))
          (hsPkgs."KMP" or (errorHandler.buildDepError "KMP"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "diff-gestalt-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."diff-gestalt" or (errorHandler.buildDepError "diff-gestalt"))
          ];
          buildable = true;
        };
      };
    };
  }