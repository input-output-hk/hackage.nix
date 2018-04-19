{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "digestive-foundation-lucid";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Athan Clark";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Speed up form designing using digestive functors and foundation";
        description = "Generate foundation forms out of digestive views";
        buildType = "Simple";
      };
      components = {
        digestive-foundation-lucid = {
          depends  = [
            hsPkgs.base
            hsPkgs.digestive-functors
            hsPkgs.digestive-functors-lucid
            hsPkgs.lucid
            hsPkgs.lucid-foundation
            hsPkgs.http-types
            hsPkgs.text
          ];
        };
      };
    }