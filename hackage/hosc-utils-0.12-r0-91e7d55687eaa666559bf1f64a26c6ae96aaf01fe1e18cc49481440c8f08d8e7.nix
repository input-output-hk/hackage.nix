{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hosc-utils"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Stefan Kersten and others, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Stefan Kersten";
      homepage = "http://rd.slavepianos.org/?t=hosc-utils";
      url = "";
      synopsis = "Haskell Open Sound Control Utilities";
      description = "hosc-utils";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hosc-utils-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hosc)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        };
      tests = {
        "hosc-utils-test" = {
          depends = [
            (hsPkgs.hosc)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }