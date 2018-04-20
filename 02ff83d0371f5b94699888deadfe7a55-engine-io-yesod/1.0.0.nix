{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "engine-io-yesod";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tim@timbaumann.info";
        author = "Tim Baumann";
        homepage = "";
        url = "";
        synopsis = "";
        description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://www.yesodweb.com/ Yesod>.";
        buildType = "Simple";
      };
      components = {
        engine-io-yesod = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.engine-io
            hsPkgs.http-types
            hsPkgs.unordered-containers
            hsPkgs.wai
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.websockets
            hsPkgs.wai-websockets
          ];
        };
      };
    }