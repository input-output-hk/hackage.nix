{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-conduit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Bidirectional support between the streaming and conduit libraries";
        description = "Allow interoperability between the streaming and conduit data streaming ecosystems.";
        buildType = "Simple";
      };
      components = {
        "streaming-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.streaming
            hsPkgs.transformers
          ];
        };
        tests = {
          "conversions" = {
            depends  = [
              hsPkgs.streaming-conduit
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.streaming
            ];
          };
        };
      };
    }