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
        name = "nested-sets";
        version = "0.0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Sarunas Valaskevicius";
      maintainer = "Sarunas Valaskevicius <rakatan@gmail.com>";
      author = "Sarunas Valaskevicius";
      homepage = "";
      url = "";
      synopsis = "Nested set model implementation";
      description = "This package is a general purpose implementation of nested sets in Haskell.\n\nSupported functionality includes:\n\n* conversion from and to Forest structure from Data.Tree;\n\n* position support with moving to parent, sibling and child nodes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nested-sets)
            (hsPkgs.hspec)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }