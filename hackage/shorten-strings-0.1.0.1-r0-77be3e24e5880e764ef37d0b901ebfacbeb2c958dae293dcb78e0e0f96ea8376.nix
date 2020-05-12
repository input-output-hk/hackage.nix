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
      specVersion = "1.6";
      identifier = { name = "shorten-strings"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Arash Rouhani <miffoljud@gmail.com>";
      author = "Patrick Brisbin <me@pbrisbin.com>";
      homepage = "https://github.com/Tarrasch/shorten-strings";
      url = "";
      synopsis = "Shorten a variety of string-like types adding ellipsis";
      description = "A yesod goody, shorten strings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }