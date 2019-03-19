{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      data-dword-inst = true;
      network-ip-inst = true;
      cryptonite-inst = true;
      exes = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "memorable-bits"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Generate human memorable strings from binary data.";
      description = "I library for creating human readable strings from\nvarious types of data. Also a DSL for comming up\nwith patterns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.bits)
          (hsPkgs.bytes)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.split)
          (hsPkgs.random)
          (hsPkgs.mtl)
          ] ++ (pkgs.lib).optionals (flags.network-ip-inst) [
          (hsPkgs.network-ip)
          (hsPkgs.data-dword)
          ]) ++ (pkgs.lib).optional (flags.data-dword-inst) (hsPkgs.data-dword)) ++ (pkgs.lib).optionals (flags.cryptonite-inst) [
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          ];
        };
      exes = {
        "membits" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.memorable-bits)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "test-memorable-bits" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.memorable-bits)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.doctest)
            (hsPkgs.HUnit)
            ];
          };
        };
      benchmarks = {
        "bench-memorable-bits" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.memorable-bits)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }