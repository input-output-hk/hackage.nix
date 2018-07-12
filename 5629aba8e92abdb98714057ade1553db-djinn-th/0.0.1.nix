{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "djinn-th";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "http://gitorious.org/djinn-th";
        url = "";
        synopsis = "Generate executable Haskell code from a type";
        description = "Djinn uses a theorem prover for intuitionistic\npropositional logic to generate a Haskell\nexpression when given a type.\n\nDjinn-TH uses Template Haskell to turn this\nexpression into executable code.";
        buildType = "Simple";
      };
      components = {
        "djinn-th" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.logict
          ];
        };
      };
    }