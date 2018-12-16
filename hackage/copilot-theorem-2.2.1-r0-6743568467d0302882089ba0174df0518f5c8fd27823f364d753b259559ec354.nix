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
      specVersion = "1.10";
      identifier = {
        name = "copilot-theorem";
        version = "2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathan.laurent@ens.fr";
      author = "Jonathan Laurent";
      homepage = "";
      url = "";
      synopsis = "k-induction for Copilot.";
      description = "Some tools to prove properties on Copilot programs with k-induction model\nchecking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.copilot-core)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.data-default)
          (hsPkgs.bimap)
          (hsPkgs.xml)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.smtlib2)
          (hsPkgs.ansi-terminal)
        ];
      };
    };
  }