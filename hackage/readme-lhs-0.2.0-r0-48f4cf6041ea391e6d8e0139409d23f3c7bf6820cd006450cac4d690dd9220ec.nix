{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "readme-lhs"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/readme-lhs#readme";
      url = "";
      synopsis = "See readme.md";
      description = "See readme.md for description.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.containers)
          ];
        };
      exes = {
        "readme-lhs-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-generic)
            (hsPkgs.pandoc)
            (hsPkgs.protolude)
            (hsPkgs.readme-lhs)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            ];
          };
        };
      };
    }