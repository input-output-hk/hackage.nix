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
      identifier = { name = "histogram-simple"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Cross Compass Ltd.";
      maintainer = "jonascarpay@gmail.com";
      author = "Cross Compass Ltd.";
      homepage = "https://github.com/xc-jp/histogram-simple#readme";
      url = "";
      synopsis = "Simple Data.Map-based histogram";
      description = "A histogram counts occurrences of things, i.e. @Histogram k@ represents a mapping @k -> Int@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }