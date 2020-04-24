{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-to-json"; version = "0.1.0.0"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."hxt-curl" or ((hsPkgs.pkgs-errors).buildDepError "hxt-curl"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hxt-tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "hxt-tagsoup"))
            (hsPkgs."hxt-expat" or ((hsPkgs.pkgs-errors).buildDepError "hxt-expat"))
            ];
          buildable = true;
          };
        };
      };
    }