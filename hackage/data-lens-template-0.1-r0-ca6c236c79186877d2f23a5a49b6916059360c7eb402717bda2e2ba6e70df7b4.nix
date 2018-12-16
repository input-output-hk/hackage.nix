{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-lens-template";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joel Burget <joelburget@gmail.com>";
      author = "Joel Burget <joelburget@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Utilities for Data.Lens";
      description = "Automatically derive a @Lens@ instance for your data type for use with @Data.Lens@. Note: the code is derived from data-accessor-template <http://hackage.haskell.org/package/data-accessor-template> by Luke Palmer and Henning Thielemann.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.comonad-transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }