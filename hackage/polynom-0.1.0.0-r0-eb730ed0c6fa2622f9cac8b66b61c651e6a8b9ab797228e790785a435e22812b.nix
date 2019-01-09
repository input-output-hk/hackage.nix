{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "polynom"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Polynomial types and operations";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.algebra)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.algebra)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.peano)
            (hsPkgs.clist)
            (hsPkgs.tasty)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty-smallcheck)
            ];
          };
        };
      };
    }