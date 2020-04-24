{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "blakesum"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Kevin Cantu";
      maintainer = "Kevin Cantu <me@kevincantu.org>";
      author = "Kevin Cantu <me@kevincantu.org>";
      homepage = "https://github.com/killerswan/Haskell-BLAKE";
      url = "";
      synopsis = "The BLAKE SHA-3 candidate hashes, in Haskell";
      description = "\nThis provides an implementation of the BLAKE SHA-3 candidate\nhash algorithms in Haskell, including BLAKE-256, BLAKE-512,\nBLAKE-224, and BLAKE-384.\n\nBased on the BLAKE proposal,\nhere: http:\\/\\/131002.net\\/blake\\/blake.pdf\n\nContributions and optimizations are welcome!\n\nThis package installs both a library and an executable.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "blakesum" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blakesum" or ((hsPkgs.pkgs-errors).buildDepError "blakesum"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }