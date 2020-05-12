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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "FileManip"; version = "0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Bryan O'Sullivan";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Expressive file and directory manipulation for Haskell.";
      description = "A Haskell library for working with files and directories.\nIncludes code for pattern matching, finding files,\nmodifying file contents, and more.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
        buildable = true;
        };
      };
    }