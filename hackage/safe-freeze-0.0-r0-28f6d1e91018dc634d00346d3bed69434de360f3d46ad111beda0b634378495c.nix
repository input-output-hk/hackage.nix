{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "safe-freeze"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Reiner Pope <reiner.pope@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Support for safely freezing multiple arrays in the ST monad.";
      description = "Support for safely freezing multiple arrays in the ST\nmonad. Developed in\n<http://reinerp.wordpress.com/2009/09/18/making-runstarray-more-flexible/>.\n\nThe new monad is defined in Control.Monad.ST.Freeze. An example\nof its use is given in Data.Array.Vector.STFreeze. The modules\nData.Array.Vector.STFreeze and Data.STRef.Freeze are reexports of\nData.Array.Vector and Data.STRef but lifted to the new ST monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."category-extras" or ((hsPkgs.pkgs-errors).buildDepError "category-extras"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."uvector" or ((hsPkgs.pkgs-errors).buildDepError "uvector"))
          ];
        buildable = true;
        };
      };
    }