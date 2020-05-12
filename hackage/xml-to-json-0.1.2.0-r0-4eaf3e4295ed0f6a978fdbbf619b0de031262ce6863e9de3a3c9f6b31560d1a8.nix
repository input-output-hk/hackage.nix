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
      identifier = { name = "xml-to-json"; version = "0.1.2.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright Noam Lewis, 2014";
      maintainer = "jones.noamle@gmail.com";
      author = "Noam Lewis";
      homepage = "https://github.com/sinelaw/xml-to-json";
      url = "";
      synopsis = "Library and command line tool for converting XML files to json";
      description = "This library converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.\nThe package also includes an executable to directly invoke the library on files (or urls on non-windows platforms).\nThe main purpose is to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.\n\nSee <https://github.com/sinelaw/xml-to-json#readme> for details and usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hxt-tagsoup" or (errorHandler.buildDepError "hxt-tagsoup"))
          (hsPkgs."hxt-expat" or (errorHandler.buildDepError "hxt-expat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) [
          (hsPkgs."hxt-curl" or (errorHandler.buildDepError "hxt-curl"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          ];
        buildable = true;
        };
      exes = {
        "xml-to-json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml-to-json" or (errorHandler.buildDepError "xml-to-json"))
            ];
          buildable = true;
          };
        };
      };
    }