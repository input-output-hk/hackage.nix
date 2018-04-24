{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cfipu";
          version = "1.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "ByronJohnsonFP@gmail.com";
        author = "Byron James Johnson";
        homepage = "https://github.com/bairyn/cfipu";
        url = "";
        synopsis = "cfipu processor for toy brainfuck-like language";
        description = "A cfipu processor that can interpret and process cfipu source.\n\ncfipu is a toy brainfuck-like language.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cfipu = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.dequeue
              hsPkgs.data-default
            ];
            build-tools = [ hsPkgs.ghc ];
          };
        };
      };
    }