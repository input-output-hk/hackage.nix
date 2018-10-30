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
        name = "multipart-names";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Eric Nedervold";
      maintainer = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      author = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      homepage = "http://github.com/nedervold/multipart-names";
      url = "";
      synopsis = "Handling of multipart names in various casing styles";
      description = "Basic utilities to handle multipart names with conversion between\ncasing styles UpperCamelCase, lowerCamelCase,\nCase_insensitive_Underscored, UPPER_UNDERSCORED, lower_underscored\nand UPPER-HYPHENATED, Case-insensitive-Hyphenated, and\nlower-hyphenated.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.case-insensitive)
          (hsPkgs.lens)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.multipart-names)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }