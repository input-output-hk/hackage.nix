{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "djinn";
          version = "2009.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lennart@augustsson.net";
        author = "Lennart Augustsson";
        homepage = "http://www.augustsson.net/Darcs/Djinn/";
        url = "";
        synopsis = "Generate Haskell code from a type";
        description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.";
        buildType = "Simple";
      };
      components = {
        exes = {
          djinn = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.editline
              hsPkgs.pretty
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
      };
    }