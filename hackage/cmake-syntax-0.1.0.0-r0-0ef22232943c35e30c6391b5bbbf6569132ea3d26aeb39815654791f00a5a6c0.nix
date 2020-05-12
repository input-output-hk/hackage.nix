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
      identifier = { name = "cmake-syntax"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/cmake-syntax#readme";
      url = "";
      synopsis = "Parser for the CMake syntax (CMakeLists.txt and .cmake files)";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/cmake-syntax#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ];
        buildable = true;
        };
      tests = {
        "cmake-syntax-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmake-syntax" or (errorHandler.buildDepError "cmake-syntax"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            ];
          buildable = true;
          };
        };
      };
    }