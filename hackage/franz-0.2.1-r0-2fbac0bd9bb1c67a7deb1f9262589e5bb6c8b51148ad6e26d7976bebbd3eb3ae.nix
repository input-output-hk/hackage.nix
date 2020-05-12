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
      specVersion = "2.0";
      identifier = { name = "franz"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/franz#readme";
      url = "";
      synopsis = "Append-only database";
      description = "Please see the README on GitHub at <https://github.com/fumieval/franz#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fast-builder" or (errorHandler.buildDepError "fast-builder"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."sendfile" or (errorHandler.buildDepError "sendfile"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "franz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."franz" or (errorHandler.buildDepError "franz"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        "franzd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."franz" or (errorHandler.buildDepError "franz"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }