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
      specVersion = "1.8";
      identifier = { name = "cabal-db"; version = "0.1.10"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/cabal-db";
      url = "";
      synopsis = "query tools for the local cabal database";
      description = "Query tool for the local cabal database\n\n* Diff between package versions\n\n* List reverse dependencies (revdeps)\n\n* Search by author or maintainer\n\n* Generate graphs of dependencies in dot format\n\n* List licenses of package and their dependencies\n\n* List all the upper version bounds that could be bumped for a list of packages\n\n* List dependencies constraint policy in package\n\n* List package's contraint policy for dependency on specific package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-db" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }