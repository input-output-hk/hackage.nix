{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "string-convert";
        version = "3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/string-convert";
      url = "";
      synopsis = "Universal string conversions";
      description = "Provides functions and typeclasses for transparent\nconversions between various string types.";
      buildType = "Simple";
    };
    components = {
      "string-convert" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.string-convert)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }