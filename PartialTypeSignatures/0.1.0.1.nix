{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "PartialTypeSignatures";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Vogt <vogt.adam@gmail.com>";
        author = "Adam Vogt <vogt.adam@gmail.com>";
        homepage = "http://code.haskell.org/~aavogt/PartialTypeSignatures";
        url = "";
        synopsis = "emulate partial type signatures with template haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        PartialTypeSignatures = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.syb
          ];
        };
      };
    }