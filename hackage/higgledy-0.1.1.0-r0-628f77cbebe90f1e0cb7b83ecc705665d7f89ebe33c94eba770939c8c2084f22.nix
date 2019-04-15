{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "higgledy"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tom.harding@habito.com";
      author = "Tom Harding";
      homepage = "https://github.com/i-am-tom/higgledy";
      url = "";
      synopsis = "Partial types as a type constructor.";
      description = "Use the generic representation of an ADT to get a higher-kinded data-style interface automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.barbies)
          (hsPkgs.generic-lens)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.higgledy)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }