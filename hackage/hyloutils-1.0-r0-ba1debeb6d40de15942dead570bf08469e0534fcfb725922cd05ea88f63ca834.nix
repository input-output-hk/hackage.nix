{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hyloutils"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dgorin@dc.uba.ar";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Very small programs for hybrid logics";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."hylolib" or ((hsPkgs.pkgs-errors).buildDepError "hylolib"))
            ];
          buildable = true;
          };
        "rewriter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hylolib" or ((hsPkgs.pkgs-errors).buildDepError "hylolib"))
            ];
          buildable = true;
          };
        };
      };
    }