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
      specVersion = "1.10";
      identifier = { name = "giak"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2016 Nicolas Mattia";
      maintainer = "nicolas@nmattia.com";
      author = "Nicolas Mattia";
      homepage = "http://github.com/nmattia/giak";
      url = "";
      synopsis = "Fuzzy finder for cabal executables";
      description = "Simple program that looks for executables in your .cabal and presents you\nwith a list. You can then complete the command you need, or simply hit enter\nwhen the fuzzy finder narrowed the list down to what you need.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "giak" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."wybor" or (errorHandler.buildDepError "wybor"))
            ];
          buildable = true;
          };
        };
      };
    }