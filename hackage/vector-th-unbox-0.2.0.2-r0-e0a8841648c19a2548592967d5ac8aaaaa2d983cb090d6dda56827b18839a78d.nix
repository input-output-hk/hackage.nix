{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vector-th-unbox"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2012−2013 Liyang HU";
      maintainer = "Liyang HU <vector-th-unbox@liyang.hu>";
      author = "Liyang HU <vector-th-unbox@liyang.hu>";
      homepage = "";
      url = "";
      synopsis = "Deriver for Data.Vector.Unboxed using Template Haskell";
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
      tests = {
        "sanity" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
            ];
          buildable = true;
          };
        };
      };
    }