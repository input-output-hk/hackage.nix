{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-bootstrap";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "";
        url = "";
        synopsis = "Bootstrap widgets for yesod";
        description = "";
        buildType = "Simple";
      };
      components = {
        yesod-bootstrap = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.shakespeare
            hsPkgs.text
            hsPkgs.blaze-html
            hsPkgs.time
            hsPkgs.email-validate
            hsPkgs.lens-family-th
            hsPkgs.lens-family-core
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.MonadRandom
            hsPkgs.persistent
            hsPkgs.yesod-markdown
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.blaze-markup
          ];
        };
      };
    }