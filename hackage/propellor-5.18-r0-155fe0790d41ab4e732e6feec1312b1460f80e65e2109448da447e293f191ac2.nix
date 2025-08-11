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
    flags = { withtypeerrors = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "propellor"; version = "5.18"; };
      license = "BSD-2-Clause";
      copyright = "2014-2023 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "https://propellor.branchable.com/";
      url = "";
      synopsis = "property-based host configuration management in haskell";
      description = "Propellor ensures that the system it's run in satisfies a list of\nproperties, taking action as necessary when a property is not yet met.\n\nIt is configured using haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ] ++ pkgs.lib.optional (flags.withtypeerrors) (hsPkgs."type-errors" or (errorHandler.buildDepError "type-errors"));
        buildable = true;
      };
      exes = {
        "propellor-config" = {
          depends = [
            (hsPkgs."propellor" or (errorHandler.buildDepError "propellor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "propellor" = {
          depends = [
            (hsPkgs."propellor" or (errorHandler.buildDepError "propellor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }