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
      specVersion = "1.8";
      identifier = { name = "lca"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lca/";
      url = "";
      synopsis = "O(log n) persistent online lowest common ancestor search without preprocessing";
      description = "This package provides a reference implementation of my skew binary random access algorithm for performing an /online/ lowest common ancestor search (and online level ancestor search) in logarithmic time without preprocessing. This improves the previous known asymptotic bound for both of these problems from /O(h)/ to /O(log h)/, where /h/ is the height of the tree. Mostly importantly this bound is completely independent of the width or overall size of the tree, enabling you to calculate lowest common ancestors in a distributed fashion with good locality.\n\nWhile /offline/ algorithms exist for both of these algorithms that that provide /O(1)/ query time, they all require at least /O(n)/ preprocessing, where /n/ is the size of the entire tree, and so are less suitable for LCA search in areas such as revision control where the tree is constantly updated, or distributed computing where the tree may be too large to fit in any one computer's memory.\n\nSlides are available from\n\n<http://www.slideshare.net/ekmett/skewbinary-online-lowest-common-ancestor-search>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."lca" or (errorHandler.buildDepError "lca"))
          ];
          buildable = true;
        };
      };
    };
  }