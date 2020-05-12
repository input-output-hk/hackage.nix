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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Lastik"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <code@tmorris.net>";
      homepage = "";
      url = "";
      synopsis = "A library for compiling programs in a variety of languages";
      description = "A library for compiling programs in a variety of languages including Java, Scala and C#.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."FileManip" or (errorHandler.buildDepError "FileManip"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."FileManip" or (errorHandler.buildDepError "FileManip"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
        buildable = true;
        };
      };
    }