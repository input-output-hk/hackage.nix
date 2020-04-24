{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ascii-table"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Sentenai, Inc.";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Sentenai";
      homepage = "https://github.com/Sentenai/ascii-table#readme";
      url = "";
      synopsis = "ASCII table";
      description = "Draw an ASCII table";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."wl-pprint-extras" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-extras"))
          ];
        buildable = true;
        };
      };
    }