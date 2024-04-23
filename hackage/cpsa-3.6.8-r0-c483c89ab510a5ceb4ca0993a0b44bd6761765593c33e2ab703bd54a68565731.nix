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
      identifier = { name = "cpsa"; version = "3.6.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mliskov@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Symbolic cryptographic protocol analyzer";
      description = "The Cryptographic Protocol Shapes Analyzer (CPSA) attempts to\nenumerate all essentially different executions possible for a\ncryptographic protocol.  We call them the shapes of the protocol.\nMany naturally occurring protocols have only finitely many, indeed\nvery few shapes.  Authentication and secrecy properties are easy to\ndetermine from them, as are attacks and anomalies, and an auxiliary\ntool reads off strongest authentication and secrecy goals from the\nshapes.\n\nFor each input problem, the CPSA program is given some initial\nbehavior, and it discovers what shapes are compatible with\nit. Normally, the initial behavior is from the point of view of one\nparticipant. The analysis reveals what the other participants must\nhave done, given the participant's view. The search is complete,\ni.e. we proved every shape can be found in a finite number of steps,\nrelative to a procedural semantics of protocol roles.  This version\nof CPSA has the ability to analyze Diffie-Hellman protocols.\n\nThe package contains a set of programs used to perform the analysis\nand display it in a browser.  Program documentation is in the doc\ndirectory in the source distribution, and installed in the package's\ndata directory.  You can locate the package's data directory by\ntyping \"cpsa --help\" to a command prompt.  New users should start\nlearning to use the tool from the manual, found at \"cpsamanual.pdf\"\nin the data directory.  Examples referenced in the manual can be\nfound in the data directory as well.  It is suggested that users\nmake an examples directory and copy \"*.scm *.xhtml\" to their local\nexamples directory, both so that they may be modified and for ease\nof access.\n\nThe theory and algorithm used by CPSA was developed with the help of\nJoshua D. Guttman, John D. Ramsdell, Jon C. Herzog, Shaddin\nF. Doghmi, F. Javier Thayer, Paul D. Rowe, and Moses D. Liskov.\nJohn D. Ramsdell and Moses D. Liskov implemented the algorithm in\nHaskell.  CPSA was designed and implemented at The MITRE Corporation.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpsa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
          buildable = true;
        };
        "cpsagraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsashapes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsaannotations" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsadiff" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsasas" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsaprot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsapp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsajson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsadebase" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsamatch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsainit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "cpsagoalsat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "cpsa2latex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }