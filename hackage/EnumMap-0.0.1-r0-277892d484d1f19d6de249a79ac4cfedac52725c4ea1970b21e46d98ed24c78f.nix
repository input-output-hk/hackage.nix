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
      specVersion = "1.2";
      identifier = { name = "EnumMap"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vanenkj@gmail.com";
      author = "John Van Enk";
      homepage = "";
      url = "";
      synopsis = "More general IntMap replacement.";
      description = "A version of IntMap that uses the Enum typeclass instead of Int. This is\nvery nearly a direct copy of the IntMap package by Daan Leijen and\nAndriy Palamarchuk. The only change is coercing the package to accept\nanything with the Enum class constraint instead of forcing Int's.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }