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
      specVersion = "1.6";
      identifier = { name = "dependent-map"; version = "0.1.1.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/dependent-map";
      url = "";
      synopsis = "Dependent finite maps (partial dependent products)";
      description = "Provides a type called @DMap@ which generalizes\n@Data.Map.Map@, allowing keys to specify the type\nof value that can be associated with them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"));
        buildable = true;
      };
    };
  }