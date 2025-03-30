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
      identifier = { name = "binrep-instances"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/binrep-instances#readme";
      url = "";
      synopsis = "Orphan instances for binrep";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binrep" or (errorHandler.buildDepError "binrep"))
          (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
        ];
        buildable = true;
      };
    };
  }