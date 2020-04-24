{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heartbeat-streams"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2016";
      maintainer = "matt@bitnomial.com, opensource@bitnomial.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/bitnomial/heartbeat-streams";
      url = "";
      synopsis = "Heartbeats for io-streams";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }