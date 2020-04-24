{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "hmatrix-banded"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/hmatrix-banded/";
      url = "";
      synopsis = "HMatrix interface to LAPACK functions for banded matrices";
      description = "HMatrix interface to LAPACK functions for banded matrices";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          ];
        buildable = true;
        };
      };
    }