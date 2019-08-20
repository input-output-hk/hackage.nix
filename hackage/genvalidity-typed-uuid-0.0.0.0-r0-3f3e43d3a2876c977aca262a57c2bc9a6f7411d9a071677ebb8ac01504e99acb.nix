{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-typed-uuid"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018-2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/typed-uuid#readme";
      url = "";
      synopsis = "Generators for Phantom-Typed version of UUID";
      description = "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-uuid)
          (hsPkgs.typed-uuid)
          ];
        };
      tests = {
        "typed-uuid-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.genvalidity-typed-uuid)
            (hsPkgs.genvalidity-uuid)
            (hsPkgs.hspec)
            (hsPkgs.typed-uuid)
            ];
          };
        };
      };
    }