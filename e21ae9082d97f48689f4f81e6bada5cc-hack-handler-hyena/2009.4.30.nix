{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-hyena";
          version = "2009.4.30";
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
        hack-handler-hyena = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.mps
            hsPkgs.hack
            hsPkgs.hack-contrib
            hsPkgs.hyena
          ];
        };
      };
    }