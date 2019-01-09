{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "hmatrix-banded"; version = "0.0.0.1"; };
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
        depends = [ (hsPkgs.hmatrix) (hsPkgs.transformers) (hsPkgs.base) ];
        libs = [ (pkgs."lapack") ];
        };
      };
    }