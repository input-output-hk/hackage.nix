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
    flags = { test-injection = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "file-embed-poly"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexis Williams <sasinestro@gmail.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Alexis Williams <sasinestro@gmail.com>";
      homepage = "https://github.com/sasinestro/file-embed";
      url = "";
      synopsis = "Use Template Haskell to embed file contents directly.";
      description = "Use Template Haskell to read a file or all the files in a\ndirectory, and turn them into (path, IsString) pairs\nembedded in your haskell code.\nThis is a (hopefully temporary) fork of the original file-embed by Micheal Snoyman.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.test-injection) (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"));
          buildable = true;
          };
        };
      };
    }