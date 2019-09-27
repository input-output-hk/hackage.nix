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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "references"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/lazac/references";
      url = "";
      synopsis = "Generalization of lenses, folds and traversals to handle monads and addition.";
      description = "References can read, write or update parts of the data.\nThey are first-class values, can be passed in functions, transformed, combined.\nReferences generalize lenses, folds and traversals for haskell (see: <https://hackage.haskell.org/package/lens>).\n\nThere are two things that references can do but the previously mentioned access methods don't.\n\n* References can cooperate with monads, for example IO.\n\n* References can be added using the @&+&@ operator, to create new lenses more easily.\n\nBasic idea taken from the currently not maintained package <https://hackage.haskell.org/package/yall>.\n\nAn example use of the references (a logger application that spawns new threads to update a global log):\n\n> logger =\n>   (forever \$ do\n>      log <- logChan ^! chan&logRecord    -- Extract the log record from the received log message\n>      thrId <- forkIO (do time <- getTime\n>                          ioref&lastLogTime != time \$ logDB     -- Update the last logging time mutable log database\n>                          let logMsg = senderThread .- show     -- Transform the thread id to a string and\n>                                         \$ loggingTime .= time  -- update the time\n>                                         \$ log                  -- inside the log message\n>                          ioref&debugInfos !~ addLogEntry log \$ logDB  -- update the table of log entries\n>                          mvar !- (+1) \$ count )\n>      mvar !- (thrId:) \$ updaters                               -- Record the spawned thread\n>     ) `catch` stopUpdaters updaters\n>   where stopUpdaters updaters ThreadKilled =\n>           mvar&traverse *!| killThread \$ updaters              -- Kill all spawned threads before stopping\n\nThere are a bunch of predefined references for datatypes included in standard libraries.\n\nNew references can be created in several ways:\n\n* From getter, setter and updater, using the @reference@ function.\n\n* From getter and setter, using one of the simplified functions (@lens@, @simplePartial@, @partial@, ...).\n\n* Using the `Data.Traversal` instance on a datatype to generate a traversal of each element.\n\n* Using lenses from `Control.Lens` package. There are a lot of packages defining lenses, folds and traversals\nfor various data structures, so it is very useful that all of them can simply be converted into a reference.\n\n* Generating references for newly defined records using the `makeReferences` Template Haskell function.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          ];
        buildable = true;
        };
      };
    }