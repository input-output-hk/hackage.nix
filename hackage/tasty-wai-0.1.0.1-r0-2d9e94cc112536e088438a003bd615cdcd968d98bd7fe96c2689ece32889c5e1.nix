{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-wai"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "sean.chalmers@data61.csiro.au";
      author = "QFPL @ Data61";
      homepage = "";
      url = "";
      synopsis = "Test 'wai' endpoints via Test.Tasty";
      description = "Helper functions and runners for testing wai endpoints using the Tasty testing infrastructure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.tasty-wai)
            ];
          };
        };
      };
    }