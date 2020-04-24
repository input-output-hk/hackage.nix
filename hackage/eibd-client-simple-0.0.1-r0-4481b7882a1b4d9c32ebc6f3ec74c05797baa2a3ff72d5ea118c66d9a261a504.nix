{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eibd-client-simple"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) Ole Krüger, 2014";
      maintainer = "ole.krueger@campus.tu-berlin.de";
      author = "Ole Krüger";
      homepage = "";
      url = "";
      synopsis = "EIBd Client";
      description = "Simple EIBd Client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        libs = [
          (pkgs."eibclient" or ((hsPkgs.pkgs-errors).sysDepError "eibclient"))
          ];
        buildable = true;
        };
      };
    }