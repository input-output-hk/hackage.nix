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
    flags = { logging = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ideas"; version = "1.8"; };
      license = "Apache-2.0";
      copyright = "(c) 2019";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "Ideas (Interactive Domain-specific Exercise Assistants) is a joint research\nproject between the Open University of the Netherlands and Utrecht\nUniversity. The project's goal is to use software and compiler technology to\nbuild state-of-the-art components for intelligent tutoring systems (ITS) and\nlearning environments. The 'ideas' software package provides a generic\nframework for constructing the expert knowledge module (also known as a\ndomain reasoner) for an ITS or learning environment. Domain knowledge is\noffered as a set of feedback services that are used by external tools such\nas the digital mathematical environment (DME), MathDox, and the Math-Bridge\nsystem. We have developed several domain reasoners based on this framework,\nincluding reasoners for mathematics, linear algebra, logic, learning Haskell\n(the Ask-Elle programming tutor) and evaluating Haskell expressions, and for\npracticing communication skills (the serious game Communicate!).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          ] ++ (pkgs.lib).optionals (flags.logging) [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
          ]) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      };
    }