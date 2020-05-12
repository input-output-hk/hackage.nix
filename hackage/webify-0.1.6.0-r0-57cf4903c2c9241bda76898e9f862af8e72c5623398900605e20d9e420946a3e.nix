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
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "webify"; version = "0.1.6.0"; };
      license = "MIT";
      copyright = "(c) 2013 Anantha Kumaran";
      maintainer = "ananthakumaran@gmail.com";
      author = "Anantha Kumaran";
      homepage = "http://github.com/ananthakumaran/webify";
      url = "";
      synopsis = "webfont generator";
      description = "A command line tool to convert ttf file to woff, eot & svg files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "webify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-strict" or (errorHandler.buildDepError "binary-strict"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."xmlgen" or (errorHandler.buildDepError "xmlgen"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hopfli" or (errorHandler.buildDepError "hopfli"))
            ];
          buildable = true;
          };
        };
      };
    }