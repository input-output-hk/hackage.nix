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
      identifier = { name = "fuzzytime"; version = "0.7.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil (a full stop) stachowski (an at sign) gmail (a full stop) com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "A 'ten past six' style clock";
      description = "A clock and timer that tell the time in a more human way (the 'ten past six' style)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
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