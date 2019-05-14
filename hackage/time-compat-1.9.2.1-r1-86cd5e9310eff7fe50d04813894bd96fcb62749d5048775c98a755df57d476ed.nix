{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "time-compat"; version = "1.9.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/phadej/time-compat";
      url = "";
      synopsis = "Compatibility package for time";
      description = "This packages tries to compat as much of @time@ features as possible.\n\n/TODO:/\n\n* Difference type @ParseTime@ and @FormatTime@ instances are missing.\n\n* Formatting varies depending on underlying @time@ version\n\n* @dayFractionToTimeOfDay@ on extreme values";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.deepseq)
          (hsPkgs.time)
          ] ++ (if flags.old-locale
          then [ (hsPkgs.old-locale) (hsPkgs.time) ]
          else [
            (hsPkgs.time)
            ])) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "instances" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.time-compat)
            ];
          };
        "main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time-compat)
            (hsPkgs.time)
            ];
          };
        };
      };
    }