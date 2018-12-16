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
      specVersion = "0";
      identifier = {
        name = "zipedit";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@gmail.com>";
      author = "Brent Yorgey";
      homepage = "http://code.haskell.org/~byorgey/code/zipedit";
      url = "";
      synopsis = "Create simple list editor interfaces";
      description = "Create simple interfaces which allow the user to\nedit lists using various simple commands (move back,\nmove forward, modify current element, etc).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.process)
        ];
      };
    };
  }