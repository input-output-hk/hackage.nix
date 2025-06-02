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
      specVersion = "2.2";
      identifier = { name = "colorhash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025";
      maintainer = "yourfriends@hapytex.eu";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/colorhash#readme";
      url = "";
      synopsis = "Generate a color for a hashable object.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }