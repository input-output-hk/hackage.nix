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
      identifier = { name = "fromhtml"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "2018 Marek Suchánek";
      maintainer = "marek.suchanek@fit.cvut.cz";
      author = "Marek Suchánek";
      homepage = "https://github.com/MarekSuchanek/FromHTML#readme";
      url = "";
      synopsis = "Simple adapter for transformation of HTML to other formats";
      description = "Please see the README on GitHub at <https://github.com/MarekSuchanek/FromHTML#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "fromhtml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fromhtml" or (errorHandler.buildDepError "fromhtml"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }