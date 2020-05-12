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
      identifier = { name = "yesod-markdown"; version = "0.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
      author = "Alexander Dunlap, Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-markdown";
      url = "";
      synopsis = "Tools for using markdown in a yesod application";
      description = "A subset of pandoc functionality useful for markdown processing in yesod applications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."xss-sanitize" or (errorHandler.buildDepError "xss-sanitize"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }