{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pdf-toolbox-content";
          version = "0.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Yuras Shumovich 2013";
        maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
        author = "Yuras Shumovich";
        homepage = "";
        url = "";
        synopsis = "A collection of tools for processing PDF files";
        description = "Tools for processing PDF content streams";
        buildType = "Simple";
      };
      components = {
        pdf-toolbox-content = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.text
            hsPkgs.io-streams
            hsPkgs.encoding
            hsPkgs.pdf-toolbox-core
          ];
        };
      };
    }