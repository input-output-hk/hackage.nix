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
    flags = {
      llvm = false;
      devil = false;
      cuda = false;
      accelerate = true;
      distributed = true;
      network26 = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "parconc-examples"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011-2013";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "";
      url = "";
      synopsis = "Examples to accompany the book \"Parallel and Concurrent Programming in Haskell\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rpar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        "sudoku1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "sudoku2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "sudoku3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "sudoku4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "sudoku5" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "strat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        "strat2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        "strat3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        "rsa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "rsa1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "rsa2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "kmeans" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "GenSamples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "parmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "rsa-pipeline" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "fwsparse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "fwsparse1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "timetable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        "timetable1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        "timetable2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        "timetable3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        "parinfer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "fwdense" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            ];
          buildable = true;
          };
        "fwdense1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "rotateimage" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            ] ++ (pkgs.lib).optional (flags.devil) (hsPkgs."repa-devil" or (errorHandler.buildDepError "repa-devil"));
          buildable = if flags.devil then true else false;
          };
        "fwaccel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.accelerate) (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"));
          buildable = if flags.accelerate then true else false;
          };
        "fwaccel-gpu" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.accelerate) (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))) ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = (if flags.accelerate
            then true
            else false) && (if flags.cuda then true else false);
          };
        "mandel" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            ] ++ (pkgs.lib).optionals (flags.accelerate) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            ]) ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = (if flags.accelerate
            then true
            else false) && (if flags.cuda then true else false);
          };
        "fork" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "reminders" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "reminders2" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "mvar1" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "mvar2" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "mvar3" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "logger" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "phonebook" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "chan" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "chan2" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "geturls1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls5" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls6" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturlscancel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturlscancel2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "modifytwo" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "chan3" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "timeout" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "catch-mask" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "catch-mask2" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "miscmodules" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        "geturlsfirst" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "TChan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        "geturls7" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls8" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturls9" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "timeout2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "findseq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "findpar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "findpar2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "findpar3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        "findpar4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "findpar5" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "server2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "chat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "ping" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-multi" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-tc" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-tc-merge" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-tc-notify" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-fail" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "distrib-chat" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "distrib-chat-noslave" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "distrib-db" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "mvar4" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "deadlock1" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "deadlock2" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "threadperf1" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "threadperf2" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "bingtranslator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "bingtranslatorconc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "geturlsstm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        };
      };
    }