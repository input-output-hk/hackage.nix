{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "licensor"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2016 Juan Pedro Villa Isaza";
      maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
      author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
      homepage = "https://github.com/jpvillaisaza/licensor";
      url = "";
      synopsis = "A license compatibility helper";
      description = "A license compatibility helper.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "licensor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }