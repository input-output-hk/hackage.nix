{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "logic-classes";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "SeeReason Partners <partners@seereason.com>";
        author = "David Fox <dsf@seereason.com>";
        homepage = "http://src.seereason.com/logic-classes";
        url = "";
        synopsis = "Framework for propositional and first order logic, theorem proving";
        description = "Package to support Propositional and First Order Logic.  It includes classes\nrepresenting the different types of formulas and terms, some instances of\nthose classes for types used in other logic libraries, and implementations of\nseveral logic algorithms, including conversion to normal form and a simple\nresolution-based theorem prover for any instance of FirstOrderFormula.";
        buildType = "Simple";
      };
      components = {
        logic-classes = {
          depends  = [
            hsPkgs.applicative-extras
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fgl
            hsPkgs.happstack-data
            hsPkgs.incremental-sat-solver
            hsPkgs.mtl
            hsPkgs.syb-with-class
            hsPkgs.text
            hsPkgs.PropLogic
            hsPkgs.pretty
            hsPkgs.safecopy
            hsPkgs.set-extra
            hsPkgs.syb
            hsPkgs.template-haskell
          ];
        };
        exes = {
          tests = {
            depends  = [ hsPkgs.HUnit ];
          };
        };
      };
    }