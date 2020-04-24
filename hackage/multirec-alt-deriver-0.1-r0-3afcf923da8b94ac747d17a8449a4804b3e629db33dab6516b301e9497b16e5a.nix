{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "multirec-alt-deriver"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniels@community.haskell.org";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Alternative multirec instances deriver";
      description = "New features/changes:\n\n- Works with arbitrary monomorphic types, e.g. @([Int],String)@, not just names that refer to monomorphic types.\n\n- The names of the \\\"proofs\\\" (= constructors of the family GADT) are now specified by the user; they don't need to be equal to the name of the types to which they correspond. (This is useful if you're working with existing code where the name is already taken)\n\n- The names of the empty types corresponding to constructors are now also customizable\n\n- The type sums in the pattern functor are now balanced trees of @(:+:)@ rather than right-nested lists. This cuts down the size of the value-level code (and hopefully helps with compilation time).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."multirec" or ((hsPkgs.pkgs-errors).buildDepError "multirec"))
          (hsPkgs."th-expand-syns" or ((hsPkgs.pkgs-errors).buildDepError "th-expand-syns"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }