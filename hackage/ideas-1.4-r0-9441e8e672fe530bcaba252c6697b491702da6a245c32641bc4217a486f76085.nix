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
    flags = { network-uri = true; logging = false; };
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "ideas"; version = "1.4"; };
      license = "Apache-2.0";
      copyright = "(c) 2015";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "Ideas (Interactive Domain-specific Exercise Assistants) is a joint research\nproject between the Open University of the Netherlands and Utrecht\nUniversity. The project's goal is to use software and compiler technology to\nbuild state-of-the-art components for intelligent tutoring systems (ITS) and\nlearning environments. The 'ideas' software package provides a generic\nframework for constructing the expert knowledge module (also known as a\ndomain reasoner) for an ITS or learning environment. Domain knowledge is\noffered as a set of feedback services that are used by external tools such\nas the digital mathematical environment (DME), MathDox, and the Math-Bridge\nsystem. We have developed several domain reasoners based on this framework,\nincluding reasoners for mathematics, linear algebra, logic, learning Haskell\n(the Ask-Elle programming tutor) and evaluating Haskell expressions, and for\npracticing communication skills (the serious game Communicate!).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."multipart" or (errorHandler.buildDepError "multipart"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (pkgs.lib).optionals (flags.logging) [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
          ]) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }