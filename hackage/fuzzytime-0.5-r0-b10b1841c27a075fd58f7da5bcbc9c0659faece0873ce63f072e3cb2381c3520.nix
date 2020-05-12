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
      identifier = { name = "fuzzytime"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "A clock which tells the time in a more familiar way";
      description = "A clock which tells the time in a more familiar way";
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