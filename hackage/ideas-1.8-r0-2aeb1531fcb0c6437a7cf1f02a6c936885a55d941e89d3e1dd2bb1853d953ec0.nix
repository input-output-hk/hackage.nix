{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { logging = true; };
    package = {
      specVersion = "1.8.0.2";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
          ] ++ (pkgs.lib).optionals (flags.logging) [
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
          ]) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      };
    }