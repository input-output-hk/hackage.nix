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
      specVersion = "2.4";
      identifier = { name = "svgsym"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2022 Robert Helgesson";
      maintainer = "robert@rycee.net";
      author = "Robert Helgesson";
      homepage = "https://git.sr.ht/~rycee/svgsym";
      url = "";
      synopsis = "A tool to prune unused symbols from icon SVG files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "svgsym" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ];
          buildable = true;
          };
        };
      };
    }