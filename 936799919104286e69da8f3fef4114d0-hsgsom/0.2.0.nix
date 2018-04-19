{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0.3";
        identifier = {
          name = "hsgsom";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Stephan Günther <gnn dot github at gmail dot com>";
        author = "Stephan Günther";
        homepage = "";
        url = "";
        synopsis = "An implementation of the GSOM clustering algorithm.";
        description = "The growing self organising map (GSOM) algorithm is a clustering algorithm\nworking on a set of n-dimensional numeric input vectors. It's output is a\nnetwork of nodes laid out in two dimensions where each node has a weight\nvector associated with it. This weight vector has the same dimension as the\ninput vectors and is meant to be intepreted as a cluster center, i.e. it\nrepresents those input vectors whose distance to the node's weight vector\nis minimal when compared to the distance to the other nodes weight vectors.\nSee <http://en.wikipedia.org/wiki/GSOM> for an explanation of the algorithm.\nThe algorithm was introduced in:\nAlahakoon, D., Halgamuge, S. K. and Sirinivasan, B. (2000)\nDynamic Self Organizing Maps With Controlled Growth\nfor Knowledge Discovery,\nIEEE Transactions on Neural Networks,\nSpecial Issue on Knowledge Discovery and Data Mining, 11, pp 601-614.";
        buildType = "Simple";
      };
      components = {
        hsgsom = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.time
            hsPkgs.stm
          ];
        };
      };
    }