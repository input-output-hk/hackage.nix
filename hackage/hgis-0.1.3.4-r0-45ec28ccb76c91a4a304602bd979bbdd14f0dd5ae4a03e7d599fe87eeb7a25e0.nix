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
    flags = { llvm-fast = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hgis"; version = "0.1.3.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/hgis#readme";
      url = "";
      synopsis = "Package and command-line for GIS with Haskell";
      description = "Package containting functions to make graphs, read\nshapefiles, and compute areas/perimeters of\ngeographic features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      exes = {
        "hgis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgis" or (errorHandler.buildDepError "hgis"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hgis-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgis" or (errorHandler.buildDepError "hgis"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }