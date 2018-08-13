{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cpsa";
        version = "3.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mliskov@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Symbolic cryptographic protocol analyzer";
      description = "The Cryptographic Protocol Shapes Analyzer (CPSA) attempts to\nenumerate all essentially different executions possibe for a\ncryptographic protocol.  We call them the shapes of the protocol.\nNaturally occurring protocols have only finitely many, indeed very\nfew shapes.  Authentication and secrecy properties are easy to\ndetermine from them, as are attacks and anomalies.\n\nFor each input problem, the CPSA program is given some initial\nbehavior, and it discovers what shapes are compatible with\nit. Normally, the initial behavior is from the point of view of one\nparticipant. The analysis reveals what the other participants must\nhave done, given the participant's view. The search is based on a\nhigh-level algorithm that was claimed to be complete, i.e. every\nshape can in fact be found in a finite number of steps. Further\ntheoretical work showed classes of executions that are not found by\nthe algorithm, however it also showed that every omitted execution\nrequires an unnatural interpretation of a protocol's roles.  Hence\nthe algorithm is complete relative to natural role semantics.\n\nThe package contains a set of programs used to perform and display\nthe analysis.  A standards complient browser, such as Firefox,\nSafari, or Chrome, is required to display the results.  Program\ndocumentation is in the doc directory in the source distribution,\nand installed in the package's data directory.  You can locate the\npackage's data directory by typing \"cpsa --help\" to a command\nprompt.  New users should start learning to use the tool from the\nmanual, found at \"cpsamanual.pdf\" in the data directory.  Examples\nreferenced in the manual can be found in the data directory as well.\nIt is suggested that users make an examples directory and copy\n\"*.scm *.xhtml\" to their local examples directory, both so that\nthey may be modified and for ease of access.\n\nSerious Windows users should install MSYS so as to allow the use of\nmake and script execution.\n\nThe theory and algorithm used by CPSA was developed with the help of\nJoshua D. Guttman, John D. Ramsdell, Jon C. Herzog, Shaddin\nF. Doghmi, F. Javier Thayer, Paul D. Rowe, and Moses D. Liskov.\nJohn D. Ramsdell and Moses D. Liskov implemented the algorithm in\nHaskell.  CPSA was designed and implemented at The MITRE Corporation.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpsamatch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parallel)
          ];
        };
        "cpsagraph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsashapes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsaannotations" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsapp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsajson" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsadiff" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsasas" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsadebase" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }