{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cpsa";
        version = "2.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Symbolic cryptographic protocol analyzer";
      description = "The Cryptographic Protocol Shapes Analyzer (CPSA) attempts to\nenumerate all essentially different executions possible for a\ncryptographic protocol.  We call them the shapes of the protocol.\nNaturally occurring protocols have only finitely many, indeed very\nfew shapes.  Authentication and secrecy properties are easy to\ndetermine from them, as are attacks and anomalies.\n\nFor each input problem, the CPSA program is given some initial\nbehavior, and it discovers what shapes are compatible with it.\nNormally, the initial behavior is from the point of view of one\nparticipant.  The analysis reveals what the other participants must\nhave done, given the participant's view.\n\nWe are working towards a version of CPSA with the property that\nwhenever it successfully terminates, every possible execution is\ndescribed by its output.  A proof of this correctness property is\nalso in development.\n\nThe package contains a set of programs used to perform and display\nthe analysis.  A standards complient browser, such as Firefox,\nSafari, or Chrome, is required to display the results.  Program\ndocumentation is in the doc directory in the source distribution,\nand installed in the package's data directory.  You can locate the\npackage's data directory by typing \"cpsa --help\" in a command\nprompt.  New users should study the documentation and the sample\ninputs in the data directory.  The source distribution includes a\ntest suite with an expanded set of input files and program design\ndocumentation.  Serious Windows users should install MSYS so as to\nallow the use of make and script execution.\n\nThe theory and algorithm used by CPSA was developed with the help of\nJoshua D. Guttman, John D. Ramsdell, Jon C. Herzog, Shaddin\nF. Doghmi, F. Javier Thayer, Paul D. Rowe, and Moses D. Liskov.\nJohn D. Ramsdell implemented the algorithm in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpsa" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parallel)
          ];
        };
        "cpsagraph" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsashapes" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsaannotations" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsaparameters" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsapp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsadiff" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsalogic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }