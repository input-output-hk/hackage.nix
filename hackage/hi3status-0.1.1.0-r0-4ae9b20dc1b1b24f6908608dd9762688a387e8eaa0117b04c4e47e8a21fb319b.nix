{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hi3status";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tekn04321@gmail.com";
      author = "Josh Kirklin";
      homepage = "";
      url = "";
      synopsis = "Status line for i3bar.";
      description = "Hi3status is a compact, lightweight, responsive and highly configurable status line for i3bar.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.dbus)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.dyre)
          (hsPkgs.prefix-units)
          (hsPkgs.network)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "hi3status" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hi3status)
          ];
        };
        "hi3status-ctl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dbus)
            (hsPkgs.process)
          ];
        };
      };
    };
  }