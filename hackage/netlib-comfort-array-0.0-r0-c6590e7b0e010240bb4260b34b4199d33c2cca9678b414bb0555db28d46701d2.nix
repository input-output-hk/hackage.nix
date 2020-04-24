{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "netlib-comfort-array"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/netlib-comfort-array/";
      url = "";
      synopsis = "Helper modules for comfort-array wrappers to BLAS and LAPACK";
      description = "Netlib is a collection of packages for efficient numeric linear algebra.\nMost prominent parts of Netlib are BLAS and LAPACK.\nThese packages contain functions for matrix computations,\nsolution of simultaneous linear equations and eigenvalue problems.\n\nThis package provides definitions shared by\nthe packages @blas-comfort-array@ and @lapack-comfort-array@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."netlib-ffi" or ((hsPkgs.pkgs-errors).buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "comfort-array"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }