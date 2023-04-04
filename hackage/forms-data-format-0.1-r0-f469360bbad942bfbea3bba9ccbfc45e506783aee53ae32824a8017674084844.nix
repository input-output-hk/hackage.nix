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
      identifier = { name = "forms-data-format"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Mario Blažević";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "";
      url = "";
      synopsis = "Parse and serialize FDF, the Forms Data Format";
      description = "This is a hacked-together library to parse and serialize FDF,\nAdobe's [Forms Data\nFormat](https://helpx.adobe.com/acrobat/kb/acrobat-forms-form-data-web.html). It\ndoes not follow the specification, but seems to work for simple\ncases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
          ];
        buildable = true;
        };
      };
    }