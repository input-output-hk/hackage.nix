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
      identifier = { name = "readability"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 G. Eyaeb";
      maintainer = "geyaeb@protonmail.com";
      author = "G. Eyaeb";
      homepage = "https://sr.ht/~geyaeb/haskell-readability";
      url = "";
      synopsis = "Extracts text of main article from HTML document";
      description = "Give @readability@ an HTML document and it will detect and extract text of the article while removing everything unnecessary like menus, advertisements or sidebars. It is more or less reimplementation of [python-readability](https://github.com/buriy/python-readability).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."html-conduit" or (errorHandler.buildDepError "html-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "readability" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."readability" or (errorHandler.buildDepError "readability"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }