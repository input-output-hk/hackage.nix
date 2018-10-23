{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "smallstring";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "http://community.haskell.org/~aslatter/code/smallstring/";
      url = "";
      synopsis = "A string type optimized for size in memory";
      description = "A string type offering very little memory overhead. No\nstring manipulation functions are offered.\n\nEquality and ordinal comparison aim to be competitive with\nthe String type.";
      buildType = "Simple";
    };
    components = {
      "smallstring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.smallarray)
          (hsPkgs.deepseq)
        ];
      };
    };
  }