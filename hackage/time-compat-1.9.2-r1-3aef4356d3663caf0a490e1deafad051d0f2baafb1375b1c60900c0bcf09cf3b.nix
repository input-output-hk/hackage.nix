{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "time-compat"; version = "1.9.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Ashley Yakeley";
      homepage = "";
      url = "";
      synopsis = "Compatibility package for time";
      description = "This packages tries to compat as much of @time@ features as possible.\n\n/TODO:/ Difference type @ParseTime@ and @FormatTime@ instances are missing.";
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
            (hsPkgs.time-compat)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }