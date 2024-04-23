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
      identifier = { name = "xml-to-json"; version = "2.0.1"; };
      license = "MIT";
      copyright = "Copyright Noam Lewis, 2014";
      maintainer = "jones.noamle@gmail.com";
      author = "Noam Lewis";
      homepage = "https://github.com/sinelaw/xml-to-json";
      url = "";
      synopsis = "Library and command line tool for converting XML files to json";
      description = "The xml-to-json executable (and library) converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.\n\nFor files that are slow to process, please use 'xml-to-json-fast' which (starting with version 2.0.0) resides in its own package.\n\nThe original purpose was to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.\n\nThe package also includes an executable to directly invoke the library on files (or urls on non-windows platforms).\n\nSee <https://github.com/sinelaw/xml-to-json#readme> for details and usage.";
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
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
        ] ++ pkgs.lib.optionals (!system.isWindows) [
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