{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "simpleirc"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Dominik Picheta";
      maintainer = "Dominik Picheta <dominikpicheta@googlemail.com>";
      author = "Dominik Picheta <dominikpicheta@googlemail.com>";
      homepage = "http://github.com/dom96/SimpleIRC";
      url = "";
      synopsis = "Simple IRC Library";
      description = "Simple IRC Library. This IRC Library aims to be simple and lightweight.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }