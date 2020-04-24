{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "http-client-lens"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Rein Henrichs";
      maintainer = "Rein Henrichs <reinh@gmail.com>";
      author = "Rein Henrichs";
      homepage = "http://github.com/reinh/http-client-lens";
      url = "";
      synopsis = "Optics for http-client";
      description = "Optics for <http://hackage.haskell.org/package/http-client http-client>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }