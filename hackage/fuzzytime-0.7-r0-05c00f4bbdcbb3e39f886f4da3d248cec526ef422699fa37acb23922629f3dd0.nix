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
      identifier = { name = "fuzzytime"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "A clock and timer that tell the time in a more human way";
      description = "A clock and timer that tell the time in a more human way";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fuzzytime" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }