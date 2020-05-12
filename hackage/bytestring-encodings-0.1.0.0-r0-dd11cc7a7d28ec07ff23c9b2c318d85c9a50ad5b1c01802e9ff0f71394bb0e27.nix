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
    flags = { dev-wall-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-encodings"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "chessai (c) 2018 ";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "";
      url = "";
      synopsis = "checks to see if a given bytestring adheres to a certain encoding ";
      description = "'Data.ByteString.X' modules provide simple, efficient function 'isX :: ByteString -> Bool'\nwhich returns 'True' if a given ByteString adheres to a certain encoding X,\nand 'False' otherwise.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-encodings" or (errorHandler.buildDepError "bytestring-encodings"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "microbenchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-encodings" or (errorHandler.buildDepError "bytestring-encodings"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }