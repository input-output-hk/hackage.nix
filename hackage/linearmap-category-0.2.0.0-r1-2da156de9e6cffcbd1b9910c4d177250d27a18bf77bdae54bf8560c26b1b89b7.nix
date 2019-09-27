let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linearmap-category"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/linearmap-family";
      url = "";
      synopsis = "Native, matrix-free linear algebra.";
      description = "The term /numerical linear algebra/ is often used almost\nsynonymous with /matrix modifications/. However, what's interesting\nfor most applications are really just /points in some vector space/\nand linear mappings between them, not matrices (which represent\npoints or mappings, but inherently depend on a particular choice\nof basis / coordinate system).\n\nThis library implements the crucial LA operations like solving\nlinear equations and eigenvalue problems, without requiring\nthat the vectors are represented in some particular basis. Apart\nfrom conceptual elegance (only operations that are actually\ngeometrically sensible will typecheck – this is far stronger than\njust confirming that the dimensions match, as some other libraries\ndo), this also opens up good optimisation possibilities: the\nvectors can be unboxed, use dedicated sparse compression, possibly\ncarry out the computations on accelerated hardware (GPU etc.).\nThe spaces can even be infinite-dimensional (e.g. function spaces).\n\nThe linear algebra algorithms in this package only require the\nvectors to support fundamental operations like addition, scalar\nproducts, double-dual-space coercion and tensor products; none of\nthis requires a basis representation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."constrained-categories" or (buildDepError "constrained-categories"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."free-vector-spaces" or (buildDepError "free-vector-spaces"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          ];
        buildable = true;
        };
      };
    }