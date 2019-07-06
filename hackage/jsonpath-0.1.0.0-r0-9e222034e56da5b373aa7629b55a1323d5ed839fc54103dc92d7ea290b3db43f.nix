{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "jsonpath"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Akshay Mankar";
      maintainer = "itsakshaymankar@gmail.com";
      author = "Akshay Mankar";
      homepage = "https://github.com/akshaymankar/jsonpath-hs#readme";
      url = "";
      synopsis = "Library to parse and execute JSONPath";
      description = "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "jsonpath-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.jsonpath)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }