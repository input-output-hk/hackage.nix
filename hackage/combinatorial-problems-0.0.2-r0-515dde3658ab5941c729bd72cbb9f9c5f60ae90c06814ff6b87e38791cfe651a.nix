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
      specVersion = "1.2";
      identifier = { name = "combinatorial-problems"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2011 Richard Senington";
      maintainer = "sc06r2s@leeds.ac.uk";
      author = "Richard Senington";
      homepage = "http://www.comp.leeds.ac.uk/sc06r2s/Projects/HaskellCombinatorialProblems";
      url = "";
      synopsis = "A number of data structures to represent and allow the manipulation of standard combinatorial problems, used as test problems in computer science.";
      description = "In computer science there are a number of standard test problems that are used for testing algorithms,\nespecially those related to Artificial Intelligence and Operations Research. Online there are a number\nof repositories for collections of known interesting problems, for example the TSPLIB at\n<http://comopt.ifi.uni-heidelberg.de/software/TSPLIB95/> and the SATLIB at\n<http://www.satlib.org/>.\n\nThis library seeks to provide implementations of data structures to store these problems, along with\nfunctions for manipulating the problems and routines to load problem files from various sources.\n\nAt present it only supports TSP\\/TSPLIB and SAT\\/SATLIB, however it is hoped that the loading routines\ncan be expanded and the range of problems expanded to cover problems like scheduling and timetabling.\nThe internal data structures make heavy use of the @Data.Map@ library and @Data.Array@. It is not currently\nusing unboxed values. The library does not use the @bytestring@ library for loading and saving data either,\nwhich will probably need to be changed later.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }