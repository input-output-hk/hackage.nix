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
      specVersion = "2.0";
      identifier = { name = "ogma-language-jsonspec"; version = "1.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perezdominguez@nasa.gov";
      author = "Ivan Perez, Alwyn Goodloe";
      homepage = "https://github.com/nasa/ogma";
      url = "";
      synopsis = "Ogma: Runtime Monitor translator: JSON Frontend";
      description = "Ogma is a tool to facilitate the integration of safe runtime monitors into\nother systems. Ogma extends\n<https://github.com/Copilot-Language/copilot Copilot>, a high-level runtime\nverification framework that generates hard real-time C99 code.\n\nThis library contains a frontend to read specifications from JSON files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."jsonpath" or (errorHandler.buildDepError "jsonpath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ogma-spec" or (errorHandler.buildDepError "ogma-spec"))
        ];
        buildable = true;
      };
    };
  }