{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "iso8601-time"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2013 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/iso8601-time";
      url = "";
      synopsis = "Convert to/from the ISO 8601 time format";
      description = "Conversion functions between Haskell time types and the ISO 8601 format,\nwhich is often used for printing times, e.g. JavaScript's @new Date().toISOString()@.\n\nCHANGELOG\n\nVersion 0.1.0\n\n* Initial version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }