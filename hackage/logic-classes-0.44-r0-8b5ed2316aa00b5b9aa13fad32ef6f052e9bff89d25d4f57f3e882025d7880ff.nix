{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "logic-classes";
        version = "0.44";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SeeReason Partners <partners@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "";
      url = "";
      synopsis = "Symbolic logic support - a class framework, example instances, polymorphic implementations";
      description = "Package to support Propositional and First Order Logic.  It includes classes\nrepresenting the different types of formulas and terms, some instances of\nthose classes for types used in other logic libraries, and implementations of\nseveral logic algorithms, including conversion to normal form and a simple\nresolution-based theorem prover for any instance of FirstOrderFormula.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.happstack-data)
          (hsPkgs.incremental-sat-solver)
          (hsPkgs.mtl)
          (hsPkgs.syb-with-class)
          (hsPkgs.text)
          (hsPkgs.PropLogic)
          (hsPkgs.pretty)
          (hsPkgs.safecopy)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "tests" = {
          depends  = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }