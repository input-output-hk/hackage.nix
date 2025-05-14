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
      specVersion = "3.0";
      identifier = { name = "dependent-enummap"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Tom Smeding, Mikolaj Konarski";
      maintainer = "Tom Smeding <xhackage@tomsmeding.com>";
      author = "Tom Smeding, Mikolaj Konarski";
      homepage = "";
      url = "";
      synopsis = "A generalisation of EnumMap to dependent types";
      description = "A generalisation of EnumMap to dependent key and value types. The key type\nneeds to be an instance of class Enum1, a generalisation of the Enum class.\nMost of the API of EnumMap/IntMap is supported, usually by wrapping IntMap\noperations in coercions accompanied by some runtime type-consistency\nassertions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-enummap" or (errorHandler.buildDepError "dependent-enummap"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
          ];
          buildable = true;
        };
      };
    };
  }