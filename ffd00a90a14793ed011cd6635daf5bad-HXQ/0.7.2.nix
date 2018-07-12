{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HXQ";
          version = "0.7.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "fegaras@cse.uta.edu";
        author = "Leonidas Fegaras";
        homepage = "http://lambda.uta.edu/HXQ/";
        url = "";
        synopsis = "An XQuery Compiler and Interpreter";
        description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provide an interpreter for\nevaluating ad-hoc XQueries read from input or from files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "xquery" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.array
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }