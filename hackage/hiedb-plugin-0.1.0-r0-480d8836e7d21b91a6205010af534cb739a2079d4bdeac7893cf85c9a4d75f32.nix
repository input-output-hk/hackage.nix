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
      specVersion = "1.12";
      identifier = { name = "hiedb-plugin"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "josephrsumabat@gmail.com";
      author = "Joseph Sumabat";
      homepage = "https://github.com/josephsumabat/hiedb-plugin#readme";
      url = "";
      synopsis = "See README on Github for more information";
      description = "Automatically index in hiedb on recompiliation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }