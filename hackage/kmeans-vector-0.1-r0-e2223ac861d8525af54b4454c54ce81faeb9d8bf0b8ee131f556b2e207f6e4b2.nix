{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "kmeans-vector"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "http://github.com/alpmestan/kmeans-vector";
      url = "";
      synopsis = "An implementation of the kmeans clustering algorithm based on the vector package";
      description = "Provides a simple (but efficient) implementation of the k-means clustering algorithm. The goal of this algorithm is to, given a list of n-dimensional points, regroup them in k groups, such that each point gets to be in the group to which it is the closest to (using the 'center' of the group).\n\nSample output (after some gnuplot hackery -- see the tests dir in the repository): <http://i.imgur.com/IpIPC.png>\n\nExpect some improvements on the initial clustering, thus resulting in a better clustering, for future versions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }