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
      identifier = { name = "svndump"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 John Wiegley";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/svndump/";
      url = "";
      synopsis = "Library for reading Subversion dump files";
      description = "A library for parsing Subversion dump files.  The objective is to convert a\ndump file into a series of data structures representing that same\ninformation.  It uses `Data.ByteString.Lazy` to reading the file, and\n`Data.Text` to represent text fields which may contain Unicode characters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test-raw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."svndump" or (errorHandler.buildDepError "svndump"))
          ];
          buildable = true;
        };
        "test-cooked" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."svndump" or (errorHandler.buildDepError "svndump"))
          ];
          buildable = true;
        };
      };
    };
  }