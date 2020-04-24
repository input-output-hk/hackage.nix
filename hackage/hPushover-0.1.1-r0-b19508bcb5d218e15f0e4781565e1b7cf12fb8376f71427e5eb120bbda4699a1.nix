{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hPushover"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Wander Hillen";
      maintainer = "wjw.hillen@gmail.com";
      author = "Wander Hillen";
      homepage = "https://github.com/WJWH/hPushover";
      url = "";
      synopsis = "Pushover.net API functions.";
      description = "Small but complete library that sends push messages to Android an Apple devices using the Pushover.net app.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }