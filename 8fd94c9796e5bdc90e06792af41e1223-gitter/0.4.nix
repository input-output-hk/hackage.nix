{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gitter";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yuriy Syrovetskiy <cblp@cblp.su>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Gitter.im API client";
        description = "Gitter.im is a programmers-oriented GitHub-based web-chat.\nThis package provides a (partial) implementation of its API.";
        buildType = "Simple";
      };
      components = {
        gitter = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.wreq
          ];
        };
      };
    }