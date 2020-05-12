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
    flags = { beta = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs-fastconvert"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Import/export git fast-import streams to/from darcs.";
      description = "The darcs-fastconvert tool allows you to both import\ngit repositories into darcs (using git fast-export)\nand export darcs repositories into git (using git\nfast-import). You may also achieve some success with\n3rd-party fast-import/fast-export tools, like\nbzr-fastimport although this is not explicitly\nsupported or tested. Often, converting from X to git\nand then to darcs works better than direct X to darcs\nconversion using 3rd-party tools.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcs-fastconvert" = {
          depends = [
            (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
            (hsPkgs."cmdlib" or (errorHandler.buildDepError "cmdlib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (if flags.beta
            then [
              (hsPkgs."darcs-beta" or (errorHandler.buildDepError "darcs-beta"))
              ]
            else [ (hsPkgs."darcs" or (errorHandler.buildDepError "darcs")) ]);
          buildable = true;
          };
        };
      };
    }