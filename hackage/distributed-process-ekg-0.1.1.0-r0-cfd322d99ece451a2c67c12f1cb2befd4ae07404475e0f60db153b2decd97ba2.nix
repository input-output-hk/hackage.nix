{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "distributed-process-ekg"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Bondarenko <aenor.realm@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Collect node stats for EKG";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          ];
        buildable = true;
        };
      };
    }