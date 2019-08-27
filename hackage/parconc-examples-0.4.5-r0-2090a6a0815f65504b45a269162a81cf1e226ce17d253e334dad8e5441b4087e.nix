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
      identifier = { name = "parconc-examples"; version = "0.4.5"; };
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
          };
        "sudoku1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "sudoku2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "sudoku3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "sudoku4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "sudoku5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "strat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          };
        "strat2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          };
        "strat3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          };
        "rsa" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "rsa1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "rsa2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
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
          };
        "parmonad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            ];
          };
        "rsa-pipeline" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "fwsparse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
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
          };
        "timetable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "timetable1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "timetable2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "timetable3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "parinfer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "fwdense" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."repa" or (buildDepError "repa"))
            ];
          };
        "fwdense1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "rotateimage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."repa" or (buildDepError "repa"))
            ] ++ (pkgs.lib).optional (flags.devil) (hsPkgs."repa-devil" or (buildDepError "repa-devil"));
          };
        "fwaccel" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.accelerate) (hsPkgs."accelerate" or (buildDepError "accelerate"));
          };
        "fwaccel-gpu" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.accelerate) (hsPkgs."accelerate" or (buildDepError "accelerate"))) ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          };
        "mandel" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            ] ++ (pkgs.lib).optionals (flags.accelerate) [
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            ]) ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          };
        "fork" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "reminders" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "reminders2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "mvar1" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "mvar2" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "mvar3" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "logger" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "phonebook" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "chan" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "chan2" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "geturls1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls6" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturlscancel" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturlscancel2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "modifytwo" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "chan3" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "timeout" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "catch-mask" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "catch-mask2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "miscmodules" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        "geturlsfirst" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "TChan" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        "geturls7" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls8" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturls9" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "timeout2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        "findseq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "findpar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        "findpar2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        "findpar3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
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
          };
        "mvar4" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "deadlock1" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "deadlock2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "threadperf1" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "threadperf2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "bingtranslator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "bingtranslatorconc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "geturlsstm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ] ++ (if flags.network26
            then [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        };
      };
    }