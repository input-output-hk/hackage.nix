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
      specVersion = "1.6.0";
      identifier = { name = "mime-directory"; version = "0.5.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2008. Mathieu Boespflug <mboes - at - tweag.net>";
      maintainer = "Mathieu Boespflug <mboes - at - tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "http://code.haskell.org/~mboes/mime-directory.git";
      url = "";
      synopsis = "A library for parsing/printing the text/directory mime type.";
      description = "A library for parsing\\/printing the text\\/directory mime type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          ];
        buildable = true;
        };
      };
    }