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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "maybench"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<maybench-devel@googlegroups.com>";
      author = "Maybench developers";
      homepage = "http://code.google.com/p/maybench/";
      url = "";
      synopsis = "Automated benchmarking tool";
      description = "Maybench is a tool for comparing the performance\nbetween two versions of the same program, on a\nseries of benchmarks that you design.\n\nMaybench aims to be easy to use, almost as easy\nas running \"time your-program arg1..arg2\". Ideally,\nit should be a simple matter for outsiders to write\ntiming tests for your programming project and contribute\nthem as part of your performance testing suite.\n\nThe Darcs repository is available at <http://code.haskell.org/maybench>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."benchpress" or (errorHandler.buildDepError "benchpress"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ]);
        buildable = true;
      };
      exes = {
        "maybench" = {
          depends = [
            (hsPkgs."benchpress" or (errorHandler.buildDepError "benchpress"))
          ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ]);
          buildable = true;
        };
        "darcs-benchmark" = {
          depends = [
            (hsPkgs."benchpress" or (errorHandler.buildDepError "benchpress"))
          ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ]);
          buildable = true;
        };
      };
    };
  }