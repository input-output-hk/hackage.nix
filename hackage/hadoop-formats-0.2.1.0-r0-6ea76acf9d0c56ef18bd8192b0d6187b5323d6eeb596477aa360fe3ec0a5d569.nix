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
      identifier = { name = "hadoop-formats"; version = "0.2.1.0"; };
      license = "Apache-2.0";
      copyright = "Jacob Stanley (c) 2014";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "http://github.com/jystic/hadoop-formats";
      url = "";
      synopsis = "Read/write file formats commonly used by Hadoop.";
      description = "Currently this package only supports reading sequence files.\n\nYou will need to have `libsnappy` installed to build this project. If you are\nusing OSX and homebrew to install snappy then the following should get\neverything installed successfully.\n\n> $ brew install snappy\n> $ SNAPPY=$(brew --prefix snappy)\n> $ export C_INCLUDE_PATH=$SNAPPY/include\n> $ export LIBRARY_PATH=$SNAPPY/lib\n> $ cabal install hadoop-formats";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [ (pkgs."snappy" or (errorHandler.sysDepError "snappy")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hadoop-formats" or (errorHandler.buildDepError "hadoop-formats"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }