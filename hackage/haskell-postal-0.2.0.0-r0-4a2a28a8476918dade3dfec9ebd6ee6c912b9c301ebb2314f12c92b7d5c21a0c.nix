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
      identifier = { name = "haskell-postal"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Fábián Tamás László";
      maintainer = "giganetom@gmail.com";
      author = "Fábián Tamás László";
      homepage = "https://github.com/netom/haskell-postal#readme";
      url = "";
      synopsis = "Haskell binding for the libpostal library";
      description = "Provides an interface for the libpostal NLP library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libpostal" or (errorHandler.pkgConfDepError "libpostal"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-postal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            ];
          pkgconfig = [
            (pkgconfPkgs."libpostal" or (errorHandler.pkgConfDepError "libpostal"))
            ];
          buildable = true;
          };
        };
      };
    }