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
      identifier = { name = "haskell-postal"; version = "0.2.1.2"; };
      license = "MIT";
      copyright = "2018 Fábián Tamás László";
      maintainer = "Fábián Tamás László <giganetom@gmail.com>";
      author = "Fábián Tamás László <giganetom@gmail.com>";
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
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          pkgconfig = [
            (pkgconfPkgs."libpostal" or (errorHandler.pkgConfDepError "libpostal"))
          ];
          buildable = true;
        };
      };
    };
  }