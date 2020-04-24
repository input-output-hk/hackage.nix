{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hack-handler-evhttp"; version = "2009.8.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bickford, Brandon <bickfordb@gmail.com>";
      author = "Bickford, Brandon <bickfordb@gmail.com>";
      homepage = "http://github.com/bickfordb/hack-handler-evhttp";
      url = "";
      synopsis = "Hack EvHTTP (libevent) Handler";
      description = "Hack EvHTTP (libevent) Handler";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-class"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
          (hsPkgs."hack-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack-contrib"))
          ];
        libs = [ (pkgs."event" or ((hsPkgs.pkgs-errors).sysDepError "event")) ];
        buildable = true;
        };
      };
    }