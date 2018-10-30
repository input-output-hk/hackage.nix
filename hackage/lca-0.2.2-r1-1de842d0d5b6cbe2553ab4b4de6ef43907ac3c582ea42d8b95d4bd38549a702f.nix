{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "lca";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lca/";
      url = "";
      synopsis = "O(log n) persistent on-line lowest common ancestor calculation without preprocessing";
      description = "This package provides a reference implementation of my skew binary random access algorithm for performing an online lowest common ancestor in logarithmic time without preprocessing. This improves the previous known asymptotic bound for this problem from /O(h)/ to /O(log h)/, where /h/ is the height of the tree. Mostly importantly this bound is completely independent of the width or overall size of the tree, enabling you to calculate lowest common ancestors in a distributed fashion with good locality.\n\nWhile algorithms exist that that provide /O(1)/ query time, they all require /O(n)/ preprocessing, where /n/ is the size of the entire tree, and so are less suitable for LCA search in areas such as revision control where the tree is constantly updated, or distributed computing where the tree may be too large to fit in any one computer's memory.\n\nSlides are available from\n\n<http://www.slideshare.net/ekmett/skewbinary-online-lowest-common-ancestor-search>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }