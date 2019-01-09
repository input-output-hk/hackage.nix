{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "throttle-io-stream"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/throttle-io-stream#readme";
      url = "";
      synopsis = "Throttler between arbitrary IO producer and consumer functions";
      description = "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.async)
          (hsPkgs.stm-chans)
          (hsPkgs.clock)
          ];
        };
      tests = {
        "throttle-io-stream-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.stm-chans)
            (hsPkgs.clock)
            (hsPkgs.base)
            (hsPkgs.throttle-io-stream)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.say)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            ];
          };
        };
      };
    }