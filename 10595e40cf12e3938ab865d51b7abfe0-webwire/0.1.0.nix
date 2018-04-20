{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "webwire";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Functional reactive web framework";
        description = "Web framework based on the design pattern of functional reactive\nprogramming (FRP) using the netwire library.";
        buildType = "Simple";
      };
      components = {
        webwire = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.cookie
            hsPkgs.cprng-aes
            hsPkgs.hamlet
            hsPkgs.http-types
            hsPkgs.netwire
            hsPkgs.shakespeare-css
            hsPkgs.shakespeare-js
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-extra
          ];
        };
      };
    }