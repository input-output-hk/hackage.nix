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
      identifier = { name = "fsh-csv"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "iostreamer007@gmail.com";
      author = "iostreamer-X";
      homepage = "";
      url = "";
      synopsis = "csv parser for fsh";
      description = "This is a csv parser for fsh. To use this parser, use the -p flag and pass 'csv' as argument";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
        ];
        buildable = true;
      };
    };
  }