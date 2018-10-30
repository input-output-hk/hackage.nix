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
        name = "prelude-plus";
        version = "0.0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Prelude for rest of us";
      description = "> import Prelude ()\n> import Prelude.Plus\n> -- then some useful modules and couple of generic functions\n> -- are available in your code";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (!(!flags.test)) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }