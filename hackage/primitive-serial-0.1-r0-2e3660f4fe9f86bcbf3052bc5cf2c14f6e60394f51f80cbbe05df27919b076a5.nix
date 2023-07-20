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
      specVersion = "2.2";
      identifier = { name = "primitive-serial"; version = "0.1"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2022 Ashley Yakeley";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/AshleyYakeley/primitive-serial";
      url = "";
      synopsis = "Serialisation of primitive types";
      description = "Representation of basic numeric types as ByteStrings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          ];
        buildable = true;
        };
      };
    }