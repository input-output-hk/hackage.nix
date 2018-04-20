{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "call-haskell-from-anything";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Niklas Hambüchen (mail@nh2.me)";
        author = "Niklas Hambüchen (mail@nh2.me)";
        homepage = "https://github.com/nh2/call-haskell-from-anything";
        url = "";
        synopsis = "Python-to-Haskell function calls";
        description = "";
        buildType = "Configure";
      };
      components = {
        call-haskell-from-anything = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.msgpack
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.attoparsec
          ];
        };
        exes = {
          call-haskell-from-anything.so = {
            depends  = [
              hsPkgs.call-haskell-from-anything
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.msgpack
              hsPkgs.mtl
            ];
          };
        };
      };
    }