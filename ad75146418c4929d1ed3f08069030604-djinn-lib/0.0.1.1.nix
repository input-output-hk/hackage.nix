{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "djinn-lib";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "trupill@gmail.com";
        author = "Lennart Augustsson";
        homepage = "http://www.augustsson.net/Darcs/Djinn/";
        url = "";
        synopsis = "Generate Haskell code from a type. Library extracted from djinn package.";
        description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.\nThis is a library extracted from Djinn sources.";
        buildType = "Simple";
      };
      components = {
        djinn-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.pretty
          ];
        };
      };
    }