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
      specVersion = "1.2";
      identifier = {
        name = "ZipFold";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/ZipFold";
      url = "http://code.haskell.org/ZipFold";
      synopsis = "Zipping folds";
      description = "ZipFold is a small package zipping folds, as described in a collection of\nblog posts, <http://conal.net/blog/tag/zip>, inspired by a post by Max Rabkin\n<http://squing.blogspot.com/2008/11/beautiful-folding.html>.\n\nProject wiki page: <http://haskell.org/haskellwiki/ZipFold>\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.TypeCompose)
        ];
      };
    };
  }