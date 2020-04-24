{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "blas-comfort-array"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/blas-comfort-array/";
      url = "";
      synopsis = "Auto-generated interface to Fortran BLAS via comfort-array";
      description = "BLAS is a package for efficient basic linear algebra operations.\nThe reference implementation is written in FORTRAN.\nThis is a semi-automatically generated mid-level wrapper.\nThe functions are not ready to use for high-level applications,\nbut they are a step closer.\n\nSee also package @lapack-comfort-array@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."blas-ffi" or ((hsPkgs.pkgs-errors).buildDepError "blas-ffi"))
          (hsPkgs."netlib-comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "netlib-comfort-array"))
          (hsPkgs."netlib-ffi" or ((hsPkgs.pkgs-errors).buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "comfort-array"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }