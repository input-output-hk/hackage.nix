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
      specVersion = "1.6";
      identifier = { name = "vcard"; version = "0.1.4"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2008. Mathieu Boespflug <mboes - at - tweag.net>";
      maintainer = "Mathieu Boespflug <mboes - at - tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "http://github.com/mboes/vCard";
      url = "";
      synopsis = "A library for parsing/printing vCards from/to various formats.";
      description = "A library for parsing\\/printing vCards from\\/to various formats.\nCurrently only vCard 3.0 defined in RFC 2426 is supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mime-directory" or (errorHandler.buildDepError "mime-directory"))
        ];
        buildable = true;
      };
    };
  }