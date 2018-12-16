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
        name = "open-adt-tutorial";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Jordan Woehr";
      maintainer = "Jordan Woehr";
      author = "";
      homepage = "https://github.com/woehr/open-adt";
      url = "";
      synopsis = "Open algebraic data type examples.";
      description = "Example usage of open-adt with haddock documentation. Read the\n\"Data.OpenADT.Tutorial\" module from top to bottom.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.deriving-compat)
          (hsPkgs.open-adt)
          (hsPkgs.recursion-schemes)
          (hsPkgs.row-types)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "open-adt-tutorial" = {
          depends = [
            (hsPkgs.open-adt-tutorial)
            (hsPkgs.base)
          ];
        };
      };
    };
  }