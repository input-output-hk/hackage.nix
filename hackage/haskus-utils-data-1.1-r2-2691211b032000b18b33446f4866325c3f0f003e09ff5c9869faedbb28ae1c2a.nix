{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "haskus-utils-data"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2018";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org";
      url = "";
      synopsis = "Haskus utility modules";
      description = "Haskus data utility modules";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskus-utils-types" or ((hsPkgs.pkgs-errors).buildDepError "haskus-utils-types"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."recursion-schemes" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }