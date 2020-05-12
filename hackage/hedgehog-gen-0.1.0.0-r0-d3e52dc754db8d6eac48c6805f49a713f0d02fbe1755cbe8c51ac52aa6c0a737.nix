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
      specVersion = "2.4";
      identifier = { name = "hedgehog-gen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2020 ByteAlly";
      maintainer = "magesh85@gmail.com";
      author = "Magesh";
      homepage = "https://github.com/byteally/hedgehog-gen";
      url = "";
      synopsis = "Customizable Gen for ADT using Generics";
      description = "Customizable Gen for ADT using Generics with the abilites to do type-based and field-based overrides of Gen.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
          ];
        buildable = true;
        };
      };
    }