{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "typed-spreadsheet";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Typed and composable spreadsheets";
      description = "This library provides a typed and composable API for building spreadsheets.\nThis differs from traditional spreadsheets in a few important ways:\n\n* you specify the relationship between inputs and outputs at compile time,\nnot runtime, so that the relationship can be type-checked\n\n* inputs of different types have different controls; for example, a `Bool`\ninput creates a checkbox and a `Double` input creates a spin button\n\n* you can only output a single value; you simulate multiple outputs by\nemitting a tuple of values\n\nSee the \"Typed.Spreadsheet\" module for full examples with code and pictures";
      buildType = "Simple";
    };
    components = {
      "typed-spreadsheet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.foldl)
          (hsPkgs.gtk3)
          (hsPkgs.microlens)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "typed-spreadsheet-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typed-spreadsheet)
            (hsPkgs.text)
          ];
        };
      };
    };
  }