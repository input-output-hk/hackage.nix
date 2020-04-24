{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pretty-compact"; version = "3.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jean-Philippe Bernardy <jeanphilippe.bernardy@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pretty-printing library";
      description = "This package contains a pretty-printing library, a set of API's\nthat provides a way to easily print out text in a consistent\nformat of your choosing. This is useful for compilers and related\ntools.\n\nThis library produces more compact outputs than both\nWadler-Leijen or Hughes-PJ algorithms, at the expense of computational ressources.\nThe core API is based on Hughes-PJ, but some combinators of the Leijen API are implemented as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      benchmarks = {
        "pretty-comparison" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."pretty-compact" or ((hsPkgs.pkgs-errors).buildDepError "pretty-compact"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }