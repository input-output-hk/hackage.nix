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
      identifier = {
        name = "hakyll-contrib-hyphenation";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "firegurafiku@gmail.com";
      author = "Pavel Kretov";
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
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."hyphenation" or (errorHandler.buildDepError "hyphenation"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
        ];
        buildable = true;
      };
    };
  }