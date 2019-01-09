{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "maid"; version = "2011.6.20"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/maid";
      url = "";
      synopsis = "A simple static web server";
      description = "Serve files from the current path";
      buildType = "Simple";
      };
    components = {
      exes = {
        "maid" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.air)
            (hsPkgs.air-extra)
            (hsPkgs.haskell98)
            (hsPkgs.hack2)
            (hsPkgs.hack2-contrib)
            (hsPkgs.data-default)
            (hsPkgs.hack2-handler-warp)
            (hsPkgs.containers)
            (hsPkgs.moe)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }