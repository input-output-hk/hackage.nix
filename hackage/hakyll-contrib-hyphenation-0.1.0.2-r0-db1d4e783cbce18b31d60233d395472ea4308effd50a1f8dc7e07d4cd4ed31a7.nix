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
      identifier = {
        name = "hakyll-contrib-hyphenation";
        version = "0.1.0.2";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Pavel Kretov <firegurafiku@gmail.com>";
      author = "Pavel Kretov <firegurafiku@gmail.com>";
      homepage = "https://bitbucket.org/rvlm/hakyll-contrib-hyphenation";
      url = "";
      synopsis = "Automatic hyphenation for Hakyll";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."hyphenation" or (errorHandler.buildDepError "hyphenation"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }