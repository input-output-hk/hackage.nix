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
      specVersion = "1.8";
      identifier = { name = "xml-to-json"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright Noam Lewis, 2012";
      maintainer = "jones.noamle@gmail.com";
      author = "Noam Lewis";
      homepage = "https://github.com/sinelaw/xml-to-json";
      url = "";
      synopsis = "Simple command line tool for converting XML files to json";
      description = "This simple tool converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.\nThe main purpose is to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.\n\nSee <https://github.com/sinelaw/xml-to-json#readme> for details and usage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xml-to-json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-curl" or (errorHandler.buildDepError "hxt-curl"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hxt-tagsoup" or (errorHandler.buildDepError "hxt-tagsoup"))
            (hsPkgs."hxt-expat" or (errorHandler.buildDepError "hxt-expat"))
            ];
          buildable = true;
          };
        };
      };
    }