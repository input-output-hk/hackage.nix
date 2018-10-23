{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ls-usb";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "2009–2010 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "List USB devices";
      description = "A small utility that lists USB devices connected to your system.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ls-usb" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.usb)
            (hsPkgs.usb-safe)
            (hsPkgs.usb-id-database)
          ];
        };
      };
    };
  }