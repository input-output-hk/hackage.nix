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
      specVersion = "3.0";
      identifier = { name = "happy-hour"; version = "0.0.0.4"; };
      license = "MIT";
      copyright = "2019 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://typeclasses.github.io/happy-hour/";
      url = "";
      synopsis = "Generate simple okay-looking bar plots without much effort";
      description = "The purpose of this library is to generate okay-looking bar plots\nfor you without much effort on your part. The style of the plots\nmay change in newer releases as we find ways to make them look\nnicer. If happy-hour generates a plot for you that is not\naesthetically pleasing, please let us know so that we may improve.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
        ];
        buildable = true;
      };
    };
  }