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
      identifier = { name = "microsoft-translator"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Cliff Harvey 2017";
      maintainer = "cs.hbar@gmail.com";
      author = "Cliff Harvey";
      homepage = "https://github.com/BlackBrane/microsoft-translator";
      url = "";
      synopsis = "Bindings to the Microsoft Translator API";
      description = "Bindings to the text portion of the <https://www.microsoft.com/en-us/translator/products.aspx Microsoft Translator API>.\n\nThe service has a free tier allowing for 2 million translated characters per month.\n\nThe supported endpoints allow for translating (lists of) text, and provide\nsentence-break information about both the original and returned passages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
    };
  }