{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "speculation-transformers";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett, Jake McArthur";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/speculation-transformers/";
        url = "";
        synopsis = "Safe, programmable, speculative parallelism with monads.";
        description = "Safe, programmable, speculative parallelism with monads.";
        buildType = "Simple";
      };
      components = {
        speculation-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.speculation
            hsPkgs.transformers
          ];
        };
      };
    }