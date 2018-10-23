{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "maid";
        version = "2010.4.24";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/maid";
      url = "";
      synopsis = "A simple static web server";
      description = "Serve files from the current path";
      buildType = "Simple";
    };
    components = {
      exes = {
        "maid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mps)
            (hsPkgs.loli)
            (hsPkgs.haskell98)
            (hsPkgs.hack-contrib)
            (hsPkgs.data-default)
            (hsPkgs.hack-handler-hyena)
            (hsPkgs.hack)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }