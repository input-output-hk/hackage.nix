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
        name = "cond";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acurtis@spsu.edu";
      author = "Adam Curtis";
      homepage = "https://github.com/kallisti-dev/cond";
      url = "";
      synopsis = "Basic conditional and boolean operators with monadic variants.";
      description = "A very simple library implementing various conditional operations, as well\nas some functions for dealing with conditions and loops in monadic code.\nFeel free to send ideas and suggestions for new conditional operators to the\nmaintainer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }