{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
      data-typeable = true;
      ghc-generics = true;
      binary = true;
      data-default = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "verbosity";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015, Peter Trško";
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
          depends  = (([
            hsPkgs.base
          ] ++ pkgs.lib.optional (_flags.ghc-generics && compiler.isGhc) hsPkgs.ghc-prim) ++ pkgs.lib.optional _flags.binary hsPkgs.binary) ++ pkgs.lib.optional _flags.data-default hsPkgs.data-default-class;
        };
      };
    }