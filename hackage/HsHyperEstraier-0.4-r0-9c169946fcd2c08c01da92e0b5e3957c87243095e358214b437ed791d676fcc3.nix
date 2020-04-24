{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HsHyperEstraier"; version = "0.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/HsHyperEstraier.html";
      url = "";
      synopsis = "HyperEstraier binding for Haskell";
      description = "HsHyperEstraier is a HyperEstraier binding for\nHaskell. HyperEstraier is an embeddable full text search engine\nwhich is supposed to be independent to any particular natural\nlanguages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        pkgconfig = [
          (pkgconfPkgs."hyperestraier" or ((hsPkgs.pkgs-errors).pkgConfDepError "hyperestraier"))
          (pkgconfPkgs."qdbm" or ((hsPkgs.pkgs-errors).pkgConfDepError "qdbm"))
          ];
        buildable = true;
        };
      };
    }