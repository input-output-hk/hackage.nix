{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "djinn";
          version = "2014.9.7";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Lennart Augustsson";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Generate Haskell code from a type";
        description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "djinn" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.pretty
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
      };
    }