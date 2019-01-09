{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-lens-template"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Joel Burget <joelburget@gmail.com>";
      homepage = "http://github.com/ekmett/data-lens-template/";
      url = "";
      synopsis = "Utilities for Data.Lens";
      description = "Automatically derive @Lens@es for your data type for use with @Data.Lens@. Note: the code is derived from data-accessor-template <http://hackage.haskell.org/package/data-accessor-template> by Luke Palmer and Henning Thielemann.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.data-lens)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }