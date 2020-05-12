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
      identifier = { name = "fuzzytime"; version = "0.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "Telling the time in a more humane way";
      description = "Telling the time in a more humane way";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fuzzytime" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }