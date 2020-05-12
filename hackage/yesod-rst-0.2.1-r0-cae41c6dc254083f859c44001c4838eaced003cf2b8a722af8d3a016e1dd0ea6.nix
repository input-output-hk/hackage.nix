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
      identifier = { name = "yesod-rst"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Pascal Wittmann <mail@pascal-wittmann.de>";
      author = "Pascal Wittmann (based on code from Patrick Brisbin)";
      homepage = "http://github.com/pSub/yesod-rst";
      url = "";
      synopsis = "Tools for using reStructuredText (RST) in a yesod application";
      description = "A subset of pandoc functionality useful for RST processing in yesod applications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."xss-sanitize" or (errorHandler.buildDepError "xss-sanitize"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          ];
        buildable = true;
        };
      };
    }