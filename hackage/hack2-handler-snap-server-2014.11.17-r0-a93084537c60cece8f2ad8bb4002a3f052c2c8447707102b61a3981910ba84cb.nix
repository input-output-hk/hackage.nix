{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack2-handler-snap-server";
        version = "2014.11.17";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-handler-snap-server";
      url = "";
      synopsis = "Hack2 Snap server handler";
      description = "Hack2 Snap server handler";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack2)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.enumerator)
          (hsPkgs.blaze-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.air)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.directory)
          ];
        };
      };
    }