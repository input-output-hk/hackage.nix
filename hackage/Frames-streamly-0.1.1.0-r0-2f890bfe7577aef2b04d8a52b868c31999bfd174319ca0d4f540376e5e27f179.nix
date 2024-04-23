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
      specVersion = "2.2";
      identifier = { name = "Frames-streamly"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "https://github.com/adamConnerSax/Frames-streamly#readme";
      url = "";
      synopsis = "A streamly layer for Frames I/O";
      description = "More information is available in the <https://github.com/adamConnerSax/Frames-streamly/blob/master/Readme.md readme>.'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
      tests = {
        "Demo" = {
          depends = [
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."Frames-streamly" or (errorHandler.buildDepError "Frames-streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
          buildable = true;
        };
        "Strictness" = {
          depends = [
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."Frames-streamly" or (errorHandler.buildDepError "Frames-streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."fast-builder" or (errorHandler.buildDepError "fast-builder"))
            (hsPkgs."bytestring-strict-builder" or (errorHandler.buildDepError "bytestring-strict-builder"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
          buildable = true;
        };
      };
    };
  }