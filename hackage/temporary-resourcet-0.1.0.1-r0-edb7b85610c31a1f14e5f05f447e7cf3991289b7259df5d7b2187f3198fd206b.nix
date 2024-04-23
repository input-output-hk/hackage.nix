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
      identifier = { name = "temporary-resourcet"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2003-2006, Isaac Jones\n(c) 2005-2009, Duncan Coutts\n(c) 2014-2018, Thomas Tuegel";
      maintainer = "Thomas Tuegel <ttuegel@mailbox.org>";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>\nThomas Tuegel <ttuegel@mailbox.org>";
      homepage = "http://www.github.com/ttuegel/temporary-resourcet";
      url = "";
      synopsis = "Portable temporary files and directories with automatic deletion";
      description = "The functions for creating temporary files and directories in the base\nlibrary are quite limited. The @unixutils@ package contains some good ones,\nbut they aren't portable to Windows.\n\nThis library repackages the Cabal implementations of its own temporary file\nand folder functions so that you can use them without linking against Cabal\nor depending on it being installed.\n\nThis library provides the same functionality as the @temporary@ package, but\nuses @resourcet@ to provide automatic deletion without nesting @withTempFile@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      tests = {
        "test-temporary-resourcet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary-resourcet" or (errorHandler.buildDepError "temporary-resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }