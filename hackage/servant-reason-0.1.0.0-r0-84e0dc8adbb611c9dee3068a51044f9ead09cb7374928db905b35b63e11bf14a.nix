{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-reason"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrei Barbu";
      maintainer = "andrei@0xab.com";
      author = "Andrei Barbu";
      homepage = "https://github.com/abarbu/servant-reason#readme";
      url = "";
      synopsis = "Derive Reason types to interact with a Haskell backend";
      description = "Please see the README on GitHub at <https://github.com/abarbu/servant-reason#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.reason-export)
          (hsPkgs.servant)
          (hsPkgs.servant-foreign)
          (hsPkgs.text)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "servant-reason-compile-test" = {
          depends = [
            (hsPkgs.Diff)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.lens)
            (hsPkgs.mockery)
            (hsPkgs.process)
            (hsPkgs.reason-export)
            (hsPkgs.servant)
            (hsPkgs.servant-foreign)
            (hsPkgs.servant-reason)
            (hsPkgs.text)
            (hsPkgs.wl-pprint-text)
            ];
          };
        "servant-reason-test" = {
          depends = [
            (hsPkgs.Diff)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.lens)
            (hsPkgs.mockery)
            (hsPkgs.process)
            (hsPkgs.reason-export)
            (hsPkgs.servant)
            (hsPkgs.servant-foreign)
            (hsPkgs.servant-reason)
            (hsPkgs.text)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      };
    }