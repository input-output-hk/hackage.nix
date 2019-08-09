{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "spectral-clustering"; version = "0.3.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/spectral-clustering#readme";
      url = "";
      synopsis = "Library for spectral clustering.";
      description = "Spectral clustering of a matrix.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.clustering)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-svdlibc)
          (hsPkgs.mwc-random)
          (hsPkgs.safe)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.statistics)
          (hsPkgs.vector)
          ];
        };
      };
    }