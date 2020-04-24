{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "vector-th-unbox"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vector-th-unbox@liyang.hu";
      author = "Liyang HU";
      homepage = "";
      url = "";
      synopsis = "Deriver for unboxed vectors using Template Haskell";
      description = "A Template Haskell deriver for unboxed vectors, given a pair of coercion\nfunctions to and from some existing type with an Unbox instance.\n\nRefer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }