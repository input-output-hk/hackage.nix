{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "phizzle";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "2015 b-mcg";
      maintainer = "bmcg0890@gmail.com";
      author = "b-mcg";
      homepage = "http://github.com/b-mcg/phizzle#readme";
      url = "";
      synopsis = "Library for checking if a given link is in a phishtank json file";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.regex-pcre)
          (hsPkgs.network)
          (hsPkgs.network-uri)
        ];
      };
      tests = {
        "phizzle-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.phizzle)
          ];
        };
      };
    };
  }