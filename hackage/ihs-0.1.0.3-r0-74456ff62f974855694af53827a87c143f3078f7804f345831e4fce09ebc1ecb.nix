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
      identifier = { name = "ihs"; version = "0.1.0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/ihs";
      url = "";
      synopsis = "Interpolated Haskell";
      description = "This abomination allows you to quickly generate text files in a style similar to ERB from Ruby or PHP. But you stay typesafe!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ihs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }