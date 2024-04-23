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
    flags = { par = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cpsa"; version = "2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Symbolic cryptographic protocol analyzer";
      description = "The Cryptographic Protocol Shapes Analyzer (CPSA) attempts to\nenumerate all essentially different executions possible for a\ncryptographic protocol.  We call them the shapes of the protocol.\nNaturally occurring protocols have only finitely many, indeed very\nfew shapes.  Authentication and secrecy properties are easy to\ndetermine from them, as are attacks and anomalies.\n\nFor each input problem, the CPSA program is given some initial\nbehavior, and it discovers what shapes are compatible with it.\nNormally, the initial behavior is from the point of view of one\nparticipant.  The analysis reveals what the other participants must\nhave done, given the participant's view.\n\nWe are working towards a version of CPSA with the property that\nwhenever it successfully terminates, every possible execution is\ndescribed by its output.  A proof of this correctness property is\nalso in development.\n\nThe package contains a set of programs used to perform and display\nthe analysis.  Program documentation is in the doc directory in the\nsource distribution, and installed in the package's data directory.\nYou can locate the package's data directory by searching for the\nfile cpsauser.html.  New users should study the documentation and\nthe sample inputs in the data directory.  The source distribution\nincludes a test suite with an expanded set of input files and\nprogram design documentation.\n\nThe theory and algorithm used by CPSA was developed with the help of\nJoshua D. Guttman, John D. Ramsdell, Jon C. Herzog, Shaddin\nF. Doghmi, F. Javier Thayer, Paul D. Rowe, and Moses D. Liskov.\nJohn D. Ramsdell implemented the algorithm in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpsa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ pkgs.lib.optional (flags.par) (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"));
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
        "cpsaparameters" = {
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
      };
    };
  }