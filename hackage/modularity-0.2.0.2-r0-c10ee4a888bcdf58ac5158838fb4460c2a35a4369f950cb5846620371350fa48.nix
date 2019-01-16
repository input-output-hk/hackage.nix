{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "modularity"; version = "0.2.0.2"; };
      license = "GPL-3.0-only";
      copyright = "2018 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/modularity#readme";
      url = "";
      synopsis = "Find the modularity of a network.";
      description = "Report Q, the Newman-Girvan modularity of an adjacency matrix.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.eigen)
          (hsPkgs.hmatrix)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.spectral-clustering)
          (hsPkgs.vector)
          ];
        };
      };
    }