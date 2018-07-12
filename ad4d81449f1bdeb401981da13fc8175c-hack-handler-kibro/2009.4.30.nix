{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-kibro";
          version = "2009.4.30";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "Hack Kibro handler";
        description = "Hack Kibro handler";
        buildType = "Simple";
      };
      components = {
        "hack-handler-kibro" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.data-default
            hsPkgs.mps
            hsPkgs.hack
            hsPkgs.kibro
          ];
        };
      };
    }