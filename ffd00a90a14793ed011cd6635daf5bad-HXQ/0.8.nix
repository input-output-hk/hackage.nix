{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HXQ";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "2008, Leonidas Fegaras";
        maintainer = "fegaras@cse.uta.edu";
        author = "Leonidas Fegaras";
        homepage = "http://lambda.uta.edu/HXQ/";
        url = "";
        synopsis = "A Compiler from XQuery to Haskell";
        description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provides an interpreter for\nevaluating ad-hoc XQueries read from input or from files.";
        buildType = "Simple";
      };
      components = {
        HXQ = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.array
            hsPkgs.readline
            hsPkgs.template-haskell
          ];
        };
        exes = {
          xquery = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.array
              hsPkgs.readline
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }