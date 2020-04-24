{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { libxml2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xeno"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marco Zocca (zocca.marco gmail)";
      author = "Christopher Done";
      homepage = "https://github.com/ocramz/xeno";
      url = "";
      synopsis = "A fast event-based XML parser in pure Haskell";
      description = "A fast, low-memory use, event-based XML parser in pure Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mutable-containers" or ((hsPkgs.pkgs-errors).buildDepError "mutable-containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "xeno-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xeno" or ((hsPkgs.pkgs-errors).buildDepError "xeno"))
            (hsPkgs."hexml" or ((hsPkgs.pkgs-errors).buildDepError "hexml"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "xeno-speed-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xeno" or ((hsPkgs.pkgs-errors).buildDepError "xeno"))
            (hsPkgs."hexml" or ((hsPkgs.pkgs-errors).buildDepError "hexml"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."hexpat" or ((hsPkgs.pkgs-errors).buildDepError "hexpat"))
            ] ++ (pkgs.lib).optional (flags.libxml2) (hsPkgs."libxml" or ((hsPkgs.pkgs-errors).buildDepError "libxml"));
          buildable = true;
          };
        "xeno-memory-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xeno" or ((hsPkgs.pkgs-errors).buildDepError "xeno"))
            (hsPkgs."weigh" or ((hsPkgs.pkgs-errors).buildDepError "weigh"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hexml" or ((hsPkgs.pkgs-errors).buildDepError "hexml"))
            ];
          buildable = true;
          };
        };
      };
    }