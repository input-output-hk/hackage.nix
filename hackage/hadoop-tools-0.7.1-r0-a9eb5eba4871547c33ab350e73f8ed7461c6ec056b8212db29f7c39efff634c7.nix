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
      specVersion = "1.10";
      identifier = { name = "hadoop-tools"; version = "0.7.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley, Conrad Parker";
      homepage = "http://github.com/jystic/hadoop-tools";
      url = "";
      synopsis = "Fast command line tools for working with Hadoop.";
      description = "hh - Blazing fast interaction with HDFS\n\nThese tools support v9 of the Hadoop RPC protocol (CDH 5.x and above).\n\nEarlier versions (< 0.6) can be installed using --constraint=hadoop-rpc==0.1.1.1\nif you need v7 support.\n\n> hh cat     - Print the contents of a file to stdout\n> hh cd      - Change working directory\n> hh chmod   - Change permissions\n> hh du      - Show the amount of space used by file or directory\n> hh find    - Recursively search a directory tree\n> hh get     - Get a file\n> hh ls      - List the contents of a directory\n> hh mkdir   - Create a directory in the specified location\n> hh pwd     - Print working directory\n> hh rm      - Delete a file or directory\n> hh mv      - Rename a file or directory\n> hh version - Show version information";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hadoop-rpc" or (errorHandler.buildDepError "hadoop-rpc"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."protobuf" or (errorHandler.buildDepError "protobuf"))
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hadoop-rpc" or (errorHandler.buildDepError "hadoop-rpc"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }