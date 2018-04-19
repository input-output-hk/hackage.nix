{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sunroof-compiler";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 The University of Kansas";
        maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
        author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
        homepage = "https://github.com/ku-fpg/sunroof-compiler";
        url = "";
        synopsis = "Monadic Javascript Compiler";
        description = "Monadic Javascript Compiler.";
        buildType = "Simple";
      };
      components = {
        sunroof-compiler = {
          depends  = [
            hsPkgs.data-reify
            hsPkgs.base
            hsPkgs.Boolean
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.vector-space
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.operational
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.tagged
          ];
        };
      };
    }