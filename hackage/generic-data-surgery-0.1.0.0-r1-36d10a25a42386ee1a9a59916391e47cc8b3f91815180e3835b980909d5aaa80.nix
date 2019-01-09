{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-data-surgery"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/generic-data-surgery#readme";
      url = "";
      synopsis = "Surgery for generic data types";
      description = "Transform data types before passing them to generic functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.generic-data)
          (hsPkgs.first-class-families)
          (hsPkgs.base)
          ];
        };
      tests = {
        "surgery-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data)
            (hsPkgs.generic-data-surgery)
            (hsPkgs.base)
            ];
          };
        "lens-surgery-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data-surgery)
            (hsPkgs.generic-lens)
            (hsPkgs.base)
            ];
          };
        };
      };
    }