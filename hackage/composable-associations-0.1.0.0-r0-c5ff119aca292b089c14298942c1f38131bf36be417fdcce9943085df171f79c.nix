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
        name = "composable-associations";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Samuel Protas";
      maintainer = "sam.protas@gmail.com";
      author = "Sam Protas";
      homepage = "https://github.com/SamProtas/composable-associations#readme";
      url = "";
      synopsis = "Types and helpers for composing types into a single larger key-value type.";
      description = "A library providing generic types and helpers for composing types together into a a single key-value type.\n\nThis is useful when a normalized data model has a denormalized serialization format. Using this libraries types and\nfunctions you build compose your data into the denormalized key-value format needed for serialization. Other\nlibraries provide concrete implementations for a given serialization format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.composable-associations)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }