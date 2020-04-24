{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "multirec-alt-deriver"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniels@community.haskell.org";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Alternative multirec instances deriver";
      description = "New features/changes:\n\n- Works with arbitrary monomorphic types, e.g. @([Int],String)@, not just names that refer to monomorphic types.\n\n- The names of the \\\"proofs\\\" (= constructors of the family GADT) are now specified by the user. In other words, a proof now doesn't need to have the same name as the type whose family-membership it proves anymore. This is useful if you're working with existing code where the type's name is already taken on the value level.\n\n- The names of the constructor-representing empty types are also customizable now.\n\n- The type sums in the pattern functor are now /balanced/ trees of @(:+:)@ rather than right-nested lists. This cuts down the size of the value-level code (and hopefully helps with compilation time).";
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