{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Nomyx-Web";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "corentin.dupont@gmail.com";
        author = "Corentin Dupont";
        homepage = "http://www.nomyx.net";
        url = "";
        synopsis = "Web gui for Nomyx";
        description = "";
        buildType = "Simple";
      };
      components = {
        Nomyx-Web = {
          depends  = [
            hsPkgs.Nomyx-Language
            hsPkgs.Nomyx-Core
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.data-lens
            hsPkgs.data-lens-fd
            hsPkgs.fb
            hsPkgs.filepath
            hsPkgs.happstack-authenticate
            hsPkgs.happstack-server
            hsPkgs.hscolour
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.reform
            hsPkgs.reform-blaze
            hsPkgs.reform-happstack
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.web-routes
            hsPkgs.web-routes-happstack
            hsPkgs.web-routes-regular
            hsPkgs.web-routes-th
          ];
        };
      };
    }