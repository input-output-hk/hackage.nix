let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "parconc-examples"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011-2013";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "http://github.com/simonmar/parconc-examples";
      url = "";
      synopsis = "Examples to accompany the book \"Parallel and Concurrent Programming in Haskell\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rpar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          buildable = true;
          };
        "sudoku1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        "sudoku2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "sudoku3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        "sudoku4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        "sudoku5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        "strat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          buildable = true;
          };
        "strat2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          buildable = true;
          };
        "strat3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          buildable = true;
          };
        "rsa" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "rsa1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "rsa2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "kmeans" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "GenSamples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."normaldistribution" or (buildDepError "normaldistribution"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "parmonad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "rsa-pipeline" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "fwsparse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "fwsparse1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "timetable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "timetable1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "timetable2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "timetable3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "parinfer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        "fwdense" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."repa" or (buildDepError "repa"))
            ];
          buildable = true;
          };
        "fwdense1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "rotateimage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."repa" or (buildDepError "repa"))
            ] ++ (pkgs.lib).optional (flags.devil) (hsPkgs."repa-devil" or (buildDepError "repa-devil"));
          buildable = if flags.devil then true else false;
          };
        "fwaccel" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.accelerate) (hsPkgs."accelerate" or (buildDepError "accelerate"));
          buildable = if flags.accelerate then true else false;
          };
        "fwaccel-gpu" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.accelerate) (hsPkgs."accelerate" or (buildDepError "accelerate"))) ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          buildable = (if flags.accelerate
            then true
            else false) && (if flags.cuda then true else false);
          };
        "mandel" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            ] ++ (pkgs.lib).optionals (flags.accelerate) [
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            ]) ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          buildable = (if flags.accelerate
            then true
            else false) && (if flags.cuda then true else false);
          };
        "fork" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "reminders" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "reminders2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "mvar1" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "mvar2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "mvar3" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "logger" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "phonebook" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "chan" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "chan2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "geturls1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls6" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturlscancel" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturlscancel2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "modifytwo" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "chan3" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "timeout" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "catch-mask" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "catch-mask2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "miscmodules" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          buildable = true;
          };
        "geturlsfirst" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "TChan" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          buildable = true;
          };
        "geturls7" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls8" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturls9" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "timeout2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          buildable = true;
          };
        "findseq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "findpar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          buildable = true;
          };
        "findpar2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          buildable = true;
          };
        "findpar3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          buildable = true;
          };
        "findpar4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "findpar5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "server2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "chat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "ping" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-multi" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-tc" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-tc-merge" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-tc-notify" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "ping-fail" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "distrib-chat" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "distrib-chat-noslave" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "distrib-db" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.distributed) [
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            ];
          buildable = if flags.distributed then true else false;
          };
        "mvar4" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "deadlock1" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "deadlock2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "threadperf1" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "threadperf2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "bingtranslator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "bingtranslatorconc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        "geturlsstm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = true;
          };
        };
      };
    }