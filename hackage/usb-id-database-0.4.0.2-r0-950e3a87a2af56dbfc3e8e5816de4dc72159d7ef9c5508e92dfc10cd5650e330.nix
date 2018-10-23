{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      example = false;
      profile-example = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "usb-id-database";
        version = "0.4.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk";
      homepage = "";
      url = "";
      synopsis = "A database of USB identifiers";
      description = "Functions to find the names associated with various identifiers from the USB\nspecification. This is useful if you want to display full human-readable names\ninstead of cryptic numeric codes.";
      buildType = "Simple";
    };
    components = {
      "usb-id-database" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.containers-unicode-symbols)
          (hsPkgs.parsimony)
        ];
      };
      exes = { "example" = {}; };
    };
  }