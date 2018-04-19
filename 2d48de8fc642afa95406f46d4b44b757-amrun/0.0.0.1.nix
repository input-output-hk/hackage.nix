{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "amrun";
          version = "0.0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "ds@iai.uni-bonn.de";
        author = "Daniel Seidel and Janis Voigtlaender";
        homepage = "";
        url = "";
        synopsis = "Interpreter for AM";
        description = "The package contains an interpreter for the AM-Language that is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2011/12 and later) at the University of Bonn.";
        buildType = "Simple";
      };
      components = {
        exes = {
          amrun = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.deepseq
            ];
          };
        };
      };
    }