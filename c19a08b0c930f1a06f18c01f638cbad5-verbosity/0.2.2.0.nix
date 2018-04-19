{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
      data-typeable = true;
      ghc-generics = true;
      binary = true;
      data-default = true;
      deepseq = true;
      cereal = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "verbosity";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2016 Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/verbosity";
        url = "";
        synopsis = "Simple enum that encodes application verbosity.";
        description = "Simple enum that encodes application verbosity with various useful instances.";
        buildType = "Simple";
      };
      components = {
        verbosity = {
          depends  = ((((([
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers) ++ pkgs.lib.optional (_flags.ghc-generics && compiler.isGhc) hsPkgs.ghc-prim) ++ pkgs.lib.optional _flags.binary hsPkgs.binary) ++ pkgs.lib.optional _flags.data-default hsPkgs.data-default-class) ++ pkgs.lib.optional _flags.deepseq hsPkgs.deepseq) ++ pkgs.lib.optional _flags.cereal hsPkgs.cereal;
        };
      };
    }