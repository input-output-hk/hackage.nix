{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sym"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/sym";
      url = "";
      synopsis = "Permutations, patterns, and statistics";
      description = "Definitions for permutations with an emphasis on permutation\npatterns and statistics.\n\n[\"Math.Sym\"] Provides an efficient definition of standard\npermutations (@StPerm@) together with a typeclass (@Perm@) whose\nfunctionality is largely inherited from @StPerm@ using a group\naction and the standardization map.\n\n[\"Math.Sym.D8\"] The dihedral group of order 8 acting on permutations.\n\n[\"Math.Sym.Stat\"] Common permutation statistics, such as @des@,\n@inv@, @exc@, @maj@, @fp@, @comp@, @lmin@, @lmax@, ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }