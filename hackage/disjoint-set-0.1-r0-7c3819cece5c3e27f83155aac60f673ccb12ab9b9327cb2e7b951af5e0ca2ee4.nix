{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "disjoint-set"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Maxwell Sayles <maxwellsayles@gmail.com>";
      author = "Maxwell Sayles <maxwellsayles@gmail.com>";
      homepage = "https://github.com/maxwellsayles/disjoint-set";
      url = "";
      synopsis = "Persistent disjoint-sets, a.k.a union-find.";
      description = "This is a persistent data structure for disjoint sets.\n\nThe algorithm is described in \"Introduction to\nAlgorithms\" by Cormen, et al. The implementation here\nuses both union by rank and path compression. We\nincur an O(logn) overhead because of the use of\npersistent maps.\n\nData.IntDisjointSet is as strict as possible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      };
    }