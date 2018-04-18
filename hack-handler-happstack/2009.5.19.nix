{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-happstack";
          version = "2009.5.19";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "Hack Happstack server handler";
        description = "Hack Happstack server handler";
        buildType = "Simple";
      };
      components = {
        hack-handler-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.hack
            hsPkgs.happstack-server
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }