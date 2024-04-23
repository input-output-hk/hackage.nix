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
      identifier = { name = "paint"; version = "2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2017-2020 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/paint";
      url = "";
      synopsis = "Colorization of text for command-line output";
      description = "Paint is a small module that implements the essential\nsubset of the ANSI terminal codes that provide various\ntext styling features, such as underlining, blinking or\ndifferent foreground and background coloring.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "paint-example-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."paint" or (errorHandler.buildDepError "paint"))
          ];
          buildable = true;
        };
        "paint-example-log" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."paint" or (errorHandler.buildDepError "paint"))
          ];
          buildable = true;
        };
        "paint-example-rainbow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."paint" or (errorHandler.buildDepError "paint"))
          ];
          buildable = true;
        };
      };
    };
  }