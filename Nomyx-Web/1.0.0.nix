{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "nomyx-web";
          version = "1.0.0";
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
        nomyx-web = {
          depends  = [
            hsPkgs.nomyx-language
            hsPkgs.nomyx-core
            hsPkgs.nomyx-auth
            hsPkgs.HTTP
            hsPkgs.imprevu
            hsPkgs.imprevu-happstack
            hsPkgs.acid-state
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.filepath
            hsPkgs.happstack-authenticate
            hsPkgs.happstack-server
            hsPkgs.hscolour
            hsPkgs.http-types
            hsPkgs.jmacro
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.reform
            hsPkgs.reform-blaze
            hsPkgs.reform-happstack
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.web-routes
            hsPkgs.web-routes-happstack
            hsPkgs.web-routes-th
          ];
        };
      };
    }