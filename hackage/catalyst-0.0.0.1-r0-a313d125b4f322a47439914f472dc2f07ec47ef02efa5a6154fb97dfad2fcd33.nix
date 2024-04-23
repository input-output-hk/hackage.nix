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
      identifier = { name = "catalyst"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Chris Penner";
      maintainer = "example@example.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/catalyst#readme";
      url = "";
      synopsis = "A Category typeclass hierarchy powerful enough to encode full programs.";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/catalyst#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
    };
  }