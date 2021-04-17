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
    flags = { dev = false; html5lib = false; wpt = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "mangrove"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "© 2020-2021 Sam May";
      maintainer = "sam@eitilt.life";
      author = "Sam May";
      homepage = "https://ag.eitilt.life/willow";
      url = "";
      synopsis = "A parser for web documents according to the HTML5 specification.";
      description = "`mangrove` provides HTML parsing for the Willow web\nbrowser suite.  As such, it has not necessarily been\nwritten with a broader audience in mind, but the resulting\ndata structures should still be generic enough to serve as\na general parsing library should you need HTML5\ncompatibility (most likely, its codified error recovery\nalgorithms); if you do use this for other projects, please\ndo share any issues —or even just discomforts— that\nbroader usage reveals.  Notably, however, `mangrove` makes\nno attempt to parse CSS, JavaScript, or to access linked\nfiles, leaving those tasks to other parts of the suite and\nmerely generates a simple document tree from the markup.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."willow" or (errorHandler.buildDepError "willow"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "html5lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mangrove" or (errorHandler.buildDepError "mangrove"))
            (hsPkgs."willow" or (errorHandler.buildDepError "willow"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = if !flags.html5lib then false else true;
          };
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mangrove" or (errorHandler.buildDepError "mangrove"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }