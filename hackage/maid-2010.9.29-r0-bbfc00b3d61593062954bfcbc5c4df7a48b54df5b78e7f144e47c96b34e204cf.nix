{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "maid"; version = "2010.9.29"; };
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.mps)
            (hsPkgs.haskell98)
            (hsPkgs.hack-contrib)
            (hsPkgs.data-default)
            (hsPkgs.hack-handler-happstack)
            (hsPkgs.hack)
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