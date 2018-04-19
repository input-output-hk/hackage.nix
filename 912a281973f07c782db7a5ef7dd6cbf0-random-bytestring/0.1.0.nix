{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "random-bytestring";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2017 Lars Kuhtz <lakuhtz@gmail.com>";
        maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
        author = "Lars Kuhtz <lakuhtz@gmail.com>";
        homepage = "https://www.github.com/larskuhtz/random-bytestring";
        url = "";
        synopsis = "Efficient generation of random bytestrings";
        description = "Efficient generation of random bytestrings";
        buildType = "Simple";
      };
      components = {
        random-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mwc-random
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats;
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.random-bytestring
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats;
          };
          benchmark-compare = {
            depends  = [
              hsPkgs.random-bytestring
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.entropy
              hsPkgs.ghc-prim
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.random
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats;
          };
          eventlog-compare = {
            depends  = [
              hsPkgs.random-bytestring
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.entropy
              hsPkgs.ghc-prim
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.random
            ];
          };
        };
      };
    }