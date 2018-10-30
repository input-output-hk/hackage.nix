{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "time";
        version = "1.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "http://semantic.org/TimeLib/";
      url = "";
      synopsis = "time library";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.old-locale)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
    };
  }