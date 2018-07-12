{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pdf-toolbox-document";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Yuras Shumovich 2012-2013";
        maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
        author = "Yuras Shumovich";
        homepage = "https://github.com/Yuras/pdf-toolbox";
        url = "";
        synopsis = "A collection of tools for processing PDF files.";
        description = "Mid level tools for processing PDF files.\n\nLevel of abstraction: document, catalog, page";
        buildType = "Simple";
      };
      components = {
        "pdf-toolbox-document" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.io-streams
            hsPkgs.cipher-rc4
            hsPkgs.cryptohash
            hsPkgs.pdf-toolbox-core
          ];
        };
      };
    }