{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hourglass"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-hourglass";
      url = "";
      synopsis = "simple performant time related library";
      description = "Simple time library focusing on simple but powerful and performant API\n\nThe backbone of the library are the Timeable and Time type classes.\n\nEach Timeable instances can be converted to type that has a Time instances,\nand thus are different representations of current time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32);
        };
      tests = {
        "test-hourglass" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.hourglass)
            (hsPkgs.deepseq)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            ];
          };
        };
      benchmarks = {
        "bench-hourglass" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.deepseq)
            (hsPkgs.hourglass)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            ];
          };
        };
      };
    }