{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ihaskell-inline-r";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015, Tweag I/O Limited.";
        maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
        author = "Mathieu Boespflug, Alexander Vershilov";
        homepage = "https://tweag.github.io/HaskellR/";
        url = "";
        synopsis = "Embed R quasiquotes and plots in IHaskell notebooks.";
        description = "";
        buildType = "Simple";
      };
      components = {
        ihaskell-inline-r = {
          depends  = [
            hsPkgs.base
            hsPkgs.inline-r
            hsPkgs.ihaskell
            hsPkgs.ihaskell-blaze
            hsPkgs.filepath
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.template-haskell
            hsPkgs.temporary
          ];
        };
      };
    }