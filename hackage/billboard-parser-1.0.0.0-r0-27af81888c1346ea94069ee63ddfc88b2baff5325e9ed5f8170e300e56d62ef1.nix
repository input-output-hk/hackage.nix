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
      identifier = { name = "billboard-parser"; version = "1.0.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2013 Utrecht University";
      maintainer = "W. Bas de Haas <bash@cs.uu.nl>";
      author = "W. Bas de Haas";
      homepage = "http://ddmal.music.mcgill.ca/billboard";
      url = "";
      synopsis = "A parser for the Billboard chord dataset";
      description = "We present a parser for the world famous Billboard dataset\ncontaining the chord transcriptions of over 1000\nprofessional chord transcriptions of popular music randomly\nselected from /Billboard/ magazine's ``Hot 100'' chart\nbetween 1958 and 1991, all time-aligned with audio.\n\nSee: W. Bas de Haas and John Ashley Burgoyne,\n/Parsing the Billboard Chord Transcriptions/, Technical Report\nUU-CS-2012-018, Department of Information and Computing\nSciences, Utrecht University, 2012.\n(<http://www.cs.uu.nl/research/techreps/repo/CS-2012/2012-018.pdf>)\n\nAnd: John Ashley Burgoyne, Jonathan Wild, Ichiro Fujinaga,\n/An Expert Ground-Truth Set for Audio Chord Recognition and Music Analysis/,\nIn: Proceedings of International\nConference on Music Information Retrieval, 2011.\n(<http://ismir2011.ismir.net/papers/OS8-1.pdf>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HarmTrace-Base" or (errorHandler.buildDepError "HarmTrace-Base"))
        ];
        buildable = true;
      };
      exes = {
        "billboard-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."HarmTrace-Base" or (errorHandler.buildDepError "HarmTrace-Base"))
          ];
          buildable = true;
        };
      };
    };
  }