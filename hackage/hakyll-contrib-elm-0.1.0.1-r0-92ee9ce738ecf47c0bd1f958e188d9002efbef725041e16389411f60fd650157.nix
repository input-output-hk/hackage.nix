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
      identifier = { name = "hakyll-contrib-elm"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Erik Stevenson";
      maintainer = "eriknstevenson@gmail.com";
      author = "Erik Stevenson";
      homepage = "https://github.com/narrative/hakyll-contrib-elm#readme";
      url = "";
      synopsis = "Compile Elm code for inclusion in Hakyll static site.";
      description = "A Hakyll extension which allows building and including Elm\nprojects in static sites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
        buildable = true;
        };
      exes = {
        "hakyll-contrib-elm-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
            (hsPkgs."hakyll-contrib-elm" or (errorHandler.buildDepError "hakyll-contrib-elm"))
            ];
          buildable = true;
          };
        };
      };
    }