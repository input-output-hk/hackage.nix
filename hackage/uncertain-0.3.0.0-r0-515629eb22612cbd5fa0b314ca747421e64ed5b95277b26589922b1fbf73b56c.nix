{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "uncertain"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2016";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/uncertain";
      url = "";
      synopsis = "Manipulating numbers with inherent experimental/measurement uncertainty";
      description = "See <https://github.com/mstksg/uncertain/blob/master/README.md README.md>.\n\nDocumentation maintained at <https://mstksg.github.io/uncertain>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          ];
        buildable = true;
        };
      };
    }