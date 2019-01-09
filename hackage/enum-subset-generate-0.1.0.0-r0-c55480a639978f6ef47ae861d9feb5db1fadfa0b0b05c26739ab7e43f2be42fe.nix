{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "enum-subset-generate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/enum-subset-generate#readme";
      url = "";
      synopsis = "Generate an ADT being a subset of another ADT, and the corresponding mappings.";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/enum-subset-generate#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "enum-subset-generate-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.enum-subset-generate)
            (hsPkgs.generic-random)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }