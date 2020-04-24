{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "chu2"; version = "2012.11.18"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/chu2";
      url = "";
      synopsis = "FFI for Chu2 Agda Web Server Interface";
      description = "FFI for Chu2 Agda Web Server Interface";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hack2" or ((hsPkgs.pkgs-errors).buildDepError "hack2"))
          (hsPkgs."hack2-handler-snap-server" or ((hsPkgs.pkgs-errors).buildDepError "hack2-handler-snap-server"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }