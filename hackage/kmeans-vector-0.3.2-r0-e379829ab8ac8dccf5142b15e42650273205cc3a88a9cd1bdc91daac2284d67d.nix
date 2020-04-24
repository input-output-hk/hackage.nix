{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "kmeans-vector"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2011-2015 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>, Ville Tirronen";
      homepage = "http://github.com/alpmestan/kmeans-vector";
      url = "";
      synopsis = "An implementation of the kmeans clustering algorithm based on the vector package";
      description = "Provides a simple (but efficient) implementation of the k-means clustering algorithm. The goal of this algorithm is to, given a set of n-dimensional points, regroup them in k groups, such that each point gets to be in the group to which it is the closest to (using the 'center' of the group).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "kmeans-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."kmeans-vector" or ((hsPkgs.pkgs-errors).buildDepError "kmeans-vector"))
            (hsPkgs."probable" or ((hsPkgs.pkgs-errors).buildDepError "probable"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."kmeans-vector" or ((hsPkgs.pkgs-errors).buildDepError "kmeans-vector"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }