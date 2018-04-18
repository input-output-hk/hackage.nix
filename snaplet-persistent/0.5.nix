{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-persistent";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ozataman@gmail.com, mightybyte@gmail.com";
        author = "Soostone Inc. Ozgun Ataman, Doug Beardsley";
        homepage = "https://github.com/soostone/snaplet-persistent";
        url = "";
        synopsis = "persistent snaplet for the Snap Framework";
        description = "Snaplet support for using the Postgresql database\nwith a Snap Framework application via the persistent\npackage.  It also includes an authentication backend.";
        buildType = "Simple";
      };
      components = {
        snaplet-persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clientsession
            hsPkgs.configurator
            hsPkgs.heist
            hsPkgs.lens
            hsPkgs.errors
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-postgresql
            hsPkgs.persistent-template
            hsPkgs.readable
            hsPkgs.resource-pool
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }