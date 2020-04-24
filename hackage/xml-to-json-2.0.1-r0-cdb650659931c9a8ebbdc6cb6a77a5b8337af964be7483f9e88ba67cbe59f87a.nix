{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hxt-tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "hxt-tagsoup"))
          (hsPkgs."hxt-expat" or ((hsPkgs.pkgs-errors).buildDepError "hxt-expat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) [
          (hsPkgs."hxt-curl" or ((hsPkgs.pkgs-errors).buildDepError "hxt-curl"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          ];
        buildable = true;
        };
      exes = {
        "xml-to-json" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xml-to-json" or ((hsPkgs.pkgs-errors).buildDepError "xml-to-json"))
            ];
          buildable = true;
          };
        };
      };
    }