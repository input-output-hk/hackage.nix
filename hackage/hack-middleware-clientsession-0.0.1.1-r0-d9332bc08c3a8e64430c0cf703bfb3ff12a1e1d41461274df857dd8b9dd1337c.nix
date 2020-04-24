{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack-middleware-clientsession";
        version = "0.0.1.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-middleware-clientsession/tree/master";
      url = "";
      synopsis = "Middleware for easily keeping session data in client cookies. (deprecated)";
      description = "Uses the clientsession package for automatic encryption,\nhashing, expiring and renewing of sessions stored in\ncookies on the client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
          (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."predicates" or ((hsPkgs.pkgs-errors).buildDepError "predicates"))
          (hsPkgs."web-encodings" or ((hsPkgs.pkgs-errors).buildDepError "web-encodings"))
          ];
        buildable = true;
        };
      };
    }