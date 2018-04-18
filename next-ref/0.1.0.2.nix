{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "next-ref";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 skedge.me";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "";
        url = "";
        synopsis = "A concurrency primitive for a slow consumer.";
        description = "A concurrency primitive for a slow consumer that can tolerate missing some updates.";
        buildType = "Simple";
      };
      components = {
        next-ref = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
        tests = {
          next-ref-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.next-ref
              hsPkgs.hspec
            ];
          };
        };
      };
    }