{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "genvalidity-mergeless"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/mergeless#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-containers)
          (hsPkgs.genvalidity-time)
          (hsPkgs.mergeless)
          ];
        };
      tests = {
        "genvalidity-mergeless-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.genvalidity-mergeless)
            (hsPkgs.genvalidity-typed-uuid)
            (hsPkgs.hspec)
            (hsPkgs.mergeless)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.typed-uuid)
            (hsPkgs.uuid)
            ];
          };
        };
      };
    }