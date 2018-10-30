{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "has";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Yusaku Hashimoto 2010";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "http://github.com/nonowarn/has";
      url = "";
      synopsis = "Entity based records";
      description = "Typical usage is described at <http://github.com/nonowarn/has/blob/master/examples/Announce04.lhs>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }