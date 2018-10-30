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
      specVersion = "1.6";
      identifier = {
        name = "ddc-core";
        version = "0.4.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler core language and type checker.";
      description = "Disciple Core is an explicitly typed language based on System-F2,\nintended as an intermediate representation for a compiler. In addition\nto the polymorphism of System-F2 it supports region, effect and closure\ntyping. Evaluation order is left-to-right call-by-value by default.\nThere is a capability system to track whether objects are mutable or\nconstant, and to ensure that computations that perform visible side\neffects are not reordered inappropriately.\nSee the @ddc-tools@ package for a user-facing interpreter and compiler.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.inchworm)
          (hsPkgs.filepath)
          (hsPkgs.wl-pprint)
          (hsPkgs.parsec)
        ];
      };
    };
  }