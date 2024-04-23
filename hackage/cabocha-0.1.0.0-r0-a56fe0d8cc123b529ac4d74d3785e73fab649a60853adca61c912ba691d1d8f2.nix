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
      identifier = { name = "cabocha"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Miyazawa Akira <pecorarista@gmail.com>";
      author = "Miyazawa Akira";
      homepage = "http://github.com/pecorarista/hscabocha";
      url = "";
      synopsis = "";
      description = "A Haskell binding to CaboCha <http://taku910.github.io/cabocha>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [ (pkgs."cabocha" or (errorHandler.sysDepError "cabocha")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabocha" or (errorHandler.buildDepError "cabocha"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          ];
          buildable = true;
        };
      };
    };
  }