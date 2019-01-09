{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "regex-generator"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "ben.hamlin@formal.tech";
      author = "Ben Hamlin";
      homepage = "";
      url = "";
      synopsis = "Generate a random string from a PCRE";
      description = "The regex-generator library allows generating bytestrings\nfrom PCREs. See github.com/protoben/regex-generator-hs for\ndocumentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.random)
          ];
        };
      tests = {
        "generate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.regex-pcre)
            (hsPkgs.regex-generator)
            ];
          };
        };
      };
    }