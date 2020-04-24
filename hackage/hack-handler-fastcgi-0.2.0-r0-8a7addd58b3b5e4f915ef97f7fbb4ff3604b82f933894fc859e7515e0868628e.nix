{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hack-handler-fastcgi"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-handler-fastcgi/tree/master";
      url = "";
      synopsis = "Hack handler direct to fastcgi";
      description = "";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hack-handler-cgi" or ((hsPkgs.pkgs-errors).buildDepError "hack-handler-cgi"))
          ];
        libs = [ (pkgs."fcgi" or ((hsPkgs.pkgs-errors).sysDepError "fcgi")) ];
        buildable = true;
        };
      };
    }