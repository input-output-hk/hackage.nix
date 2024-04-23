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
    flags = { binaries = false; profiling = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "continuum"; version = "0.1.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexp@coffeenco.de";
      author = "Alex Petrov";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Continuum Database Client";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."nanomsg-haskell" or (errorHandler.buildDepError "nanomsg-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "continuum-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timers" or (errorHandler.buildDepError "timers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."suspend" or (errorHandler.buildDepError "suspend"))
            (hsPkgs."leveldb-haskell-fork" or (errorHandler.buildDepError "leveldb-haskell-fork"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."nanomsg-haskell" or (errorHandler.buildDepError "nanomsg-haskell"))
          ];
          libs = [
            (pkgs."hyperleveldb" or (errorHandler.sysDepError "hyperleveldb"))
          ];
          buildable = if flags.binaries then true else false;
        };
      };
    };
  }