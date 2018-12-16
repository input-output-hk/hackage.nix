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
        name = "banwords";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@housejeffries.com";
      author = "Ian Grant Jeffries";
      homepage = "https://github.com/fanjam/banwords";
      url = "";
      synopsis = "Generalized word blacklister";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.banwords)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }