{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-happstack";
          version = "2009.4.50";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "Hyena Kibro handler";
        description = "Hyena Kibro handler";
        buildType = "Simple";
      };
      components = {
        "hack-handler-happstack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.hack
            hsPkgs.hack-contrib
            hsPkgs.happstack-server
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }