{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-lens-template"; version = "2.1.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Joel Burget <joelburget@gmail.com>";
      homepage = "http://github.com/roconnor/data-lens-template/";
      url = "";
      synopsis = "Utilities for Data.Lens";
      description = "Automatically derive @Lens@es for your data type for use with @Data.Lens@. Note: the code is derived from data-accessor-template <http://hackage.haskell.org/package/data-accessor-template> by Luke Palmer and Henning Thielemann.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }