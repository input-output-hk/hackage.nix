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
    flags = { development = false; cairo = true; diagrams = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hgis"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Library and for GIS with Haskell";
      description = "Package containing functions to make graphs, read\nshapefiles, and compute areas/perimeters of\ngeographic features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ] ++ (pkgs.lib).optional (flags.cairo) (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))) ++ (pkgs.lib).optional (flags.diagrams) (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"));
        buildable = true;
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