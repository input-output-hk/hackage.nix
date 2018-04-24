{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle";
          version = "0.7.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "Interface for JavaScript that works with GHCJS and GHC";
        description = "This package provides an EDSL for calling JavaScript that\ncan be used both from GHCJS and GHC.  When using GHC\nthe application is run using Warp and WebSockets to\ndrive a small JavaScipt helper.";
        buildType = "Simple";
      };
      components = {
        jsaddle = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.primitive
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ] ++ (if compiler.isGhcjs && true
            then [
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-prim
            ]
            else [
              hsPkgs.attoparsec
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.http-types
              hsPkgs.process
              hsPkgs.ref-tf
              hsPkgs.scientific
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
            ]);
        };
      };
    }