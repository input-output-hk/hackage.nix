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
      identifier = { name = "huckleberry"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "";
      url = "";
      synopsis = "haskell EDSL Huckleberry";
      description = "IchigoJam BASIC on haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }