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
      specVersion = "1.6";
      identifier = { name = "FileManipCompat"; version = "0.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Hartman <thomashartman1@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Expressive file and directory manipulation for Haskell.";
      description = "A Haskell library for working with files and directories.\nIncludes code for pattern matching, finding files,\nmodifying file contents, and more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          ];
        buildable = true;
        };
      };
    }