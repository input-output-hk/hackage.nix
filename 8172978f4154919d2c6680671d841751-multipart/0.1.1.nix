{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "multipart";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Andy Gill, Anders Kaseorg, Ian Lynagh, Erik Meijer, Sven Panne, Jeremy Shaw";
        maintainer = "code@silk.co";
        author = "Silk B.V.";
        homepage = "http://www.github.com/silkapp/multipart";
        url = "";
        synopsis = "A partial fork of the cgi package exposing the multipart module";
        description = "A partial fork of the cgi package exposing the multipart module";
        buildType = "Simple";
      };
      components = {
        "multipart" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
          ];
        };
      };
    }