{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "references"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Boldizsar Nemeth, 2014";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/lazac/references";
      url = "";
      synopsis = "Selectors for reading and updating data.";
      description = "References are data accessors that can read, write or update the accessed infromation through their context. They are first-class values, can be passed in functions, transformed, combined. References generalize lenses, folds and traversals for haskell (see: < https://hackage.haskell.org/package/lens>).\n\nReferences are more general than field selectors in traditional languages.\n\n* References are first-class values. If there is a struct in C, for example, with an `int` field `fl`, then fl can only be used as part of an expression. One can not generalize a function to take a field selector and transform the selected data or use it in other ways.\n\n* They can have different meanings, while field accessors can only represent data-level containment. They can express uncertain containment (like field selectors of C unions), different viewpoints of the same data, and other concepts.\n\nThere are two things that references can do but the previously mentioned access methods don't.\n\n* References can cooperate with monads, for example IO. This opens many new applications.\n\n* References can be added using the @&+&@ operator, to create new lenses more easily.\n\nBasic idea taken from the currently not maintained package <https://hackage.haskell.org/package/yall>.\n\nAn example use of the references (a logger application that spawns new threads to update a global log):\n\n> logger =\n>   (forever \$ do\n>      log <- logChan ^? chan&logRecord    -- Extract the log record from the received log message\n>      thrId <- forkIO (do time <- getTime\n>                          ioref&lastLogTime != time \$ logDB     -- Update the last logging time mutable log database\n>                          let logMsg = senderThread .- show     -- Transform the thread id to a string and\n>                                         \$ loggingTime .= time  -- update the time\n>                                         \$ log                  -- inside the log message\n>                          ioref&debugInfos !~ addLogEntry log \$ logDB  -- update the table of log entries\n>                          mvar !- (+1) \$ count )\n>      mvar !- (thrId:) \$ updaters                               -- Record the spawned thread\n>     ) `catch` stopUpdaters updaters\n>   where stopUpdaters updaters ThreadKilled =\n>           mvar&traverse !| killThread \$ updaters               -- Kill all spawned threads before stopping\n\nThere are a bunch of predefined references for datatypes included in standard libraries.\n\nNew references can be created in several ways:\n\n* From getter, setter and updater, using the @reference@ function.\n\n* From getter and setter, using one of the simplified functions (@lens@, @simplePartial@, @partial@, ...).\n\n* Using the `Data.Traversal` instance on a datatype to generate a traversal of each element.\n\n* Using lenses from `Control.Lens` package. There are a lot of packages defining lenses, folds and traversals\nfor various data structures, so it is very useful that all of them can simply be converted into a reference.\n\n* Generating references for newly defined datatypes using the `makeReferences` Template Haskell function.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."instance-control" or ((hsPkgs.pkgs-errors).buildDepError "instance-control"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "lens-creation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."instance-control" or ((hsPkgs.pkgs-errors).buildDepError "instance-control"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }