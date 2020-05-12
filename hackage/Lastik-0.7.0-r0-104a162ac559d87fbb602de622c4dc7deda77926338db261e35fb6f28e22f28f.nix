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
      identifier = { name = "Lastik"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <code@tmorris.net>";
      homepage = "http://code.google.com/p/lastik";
      url = "";
      synopsis = "A library for compiling programs in a variety of languages";
      description = "A library for compiling programs in a variety of languages including Java, Scala and C#.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          ];
        buildable = true;
        };
      };
    }