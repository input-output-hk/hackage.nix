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
      specVersion = "1.6";
      identifier = { name = "wordsetdiff"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Compare two files as sets of words or sets of N-tuples of words.";
      description = "This utility is useful for finding out if some old,\nmisplaced version of a file (say from your old laptop)\nhas any new text in it that never got checked in, synced,\nor copied over to your newest version of the file.\nThe basic unix diff tool is sometimes incredibly\nunsatisfactory for this purpose, for example when text has\nbeen moved around, or when there are widespread whitespace\ndifferences.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wordsetdiff" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }