{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "reason-export"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2019 Andrei Barbu";
      maintainer = "andrei@0xab.com";
      author = "Andrei Barbu";
      homepage = "https://github.com/abarbu/reason-export#readme";
      url = "";
      synopsis = "Generate Reason types from Haskell";
      description = "Please see the README on GitHub at <https://github.com/abarbu/reason-export#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "reason-export-test" = {
          depends = [
            (hsPkgs.Diff)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reason-export)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }