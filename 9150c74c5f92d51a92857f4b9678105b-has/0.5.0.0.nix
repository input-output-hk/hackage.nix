{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
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
      "has" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }