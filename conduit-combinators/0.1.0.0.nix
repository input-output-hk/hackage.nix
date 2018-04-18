{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "conduit-combinators";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael snoyman";
        homepage = "https://github.com/fpco/conduit-combinators";
        url = "";
        synopsis = "Commonly used conduit functions, for both chunked and unchunked data";
        description = "Provides a replacement for Data.Conduit.List, as well as a convenient Conduit module.";
        buildType = "Simple";
      };
      components = {
        conduit-combinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.chunked-data
            hsPkgs.conduit
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.primitive
            hsPkgs.mono-traversable
            hsPkgs.vector
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit-combinators
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.basic-prelude
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.transformers
              hsPkgs.chunked-data
              hsPkgs.mono-traversable
              hsPkgs.silently
              hsPkgs.bytestring
            ];
          };
        };
      };
    }