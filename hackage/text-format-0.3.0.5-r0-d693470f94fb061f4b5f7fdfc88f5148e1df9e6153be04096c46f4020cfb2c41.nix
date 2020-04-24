{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "text-format"; version = "0.3.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "https://github.com/mailrank/text-format";
      url = "";
      synopsis = "Text formatting";
      description = "A text formatting library optimized for both ease of use and high\nperformance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.11") (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9" && (compiler.isGhc && (compiler.version).lt "6.11")) (hsPkgs."integer" or ((hsPkgs.pkgs-errors).buildDepError "integer"));
        buildable = true;
        };
      };
    }