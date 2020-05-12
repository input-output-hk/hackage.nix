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
      identifier = { name = "rings"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris.mckinlay@gmail.com";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/rings";
      url = "";
      synopsis = "Ring-like objects.";
      description = "Semirings, rings, division rings, and modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lawz" or (errorHandler.buildDepError "lawz"))
          (hsPkgs."magmas" or (errorHandler.buildDepError "magmas"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."connections" or (errorHandler.buildDepError "connections"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."property" or (errorHandler.buildDepError "property"))
            (hsPkgs."rings" or (errorHandler.buildDepError "rings"))
            ];
          buildable = true;
          };
        };
      };
    }