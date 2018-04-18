{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "graceful";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013, Noriyuki OHKAWA";
        maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Library to write graceful shutdown / upgrade service.";
        description = "Library to write graceful shutdown / upgrade service.";
        buildType = "Simple";
      };
      components = {
        graceful = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.unix
            hsPkgs.stm
            hsPkgs.directory
          ];
        };
        tests = {
          graceful-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.graceful
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.network
              hsPkgs.unix
              hsPkgs.stm
              hsPkgs.directory
            ];
          };
        };
      };
    }