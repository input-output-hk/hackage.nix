{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GraphHammer-examples"; version = "0.3"; };
      license = "GPL-2.0-only";
      copyright = "2013, Parallel Scientific Labs, LLC";
      maintainer = "alexander.vershilov@parsci.com";
      author = "serguey.zefirov@parsci.com";
      homepage = "";
      url = "";
      synopsis = "Test harness for TriangleCount analysis.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "TriangleCountTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."Graph500" or ((hsPkgs.pkgs-errors).buildDepError "Graph500"))
            (hsPkgs."GraphHammer" or ((hsPkgs.pkgs-errors).buildDepError "GraphHammer"))
            ];
          buildable = true;
          };
        "ClusteringCoefficientTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."Graph500" or ((hsPkgs.pkgs-errors).buildDepError "Graph500"))
            (hsPkgs."GraphHammer" or ((hsPkgs.pkgs-errors).buildDepError "GraphHammer"))
            ];
          buildable = false;
          };
        };
      };
    }