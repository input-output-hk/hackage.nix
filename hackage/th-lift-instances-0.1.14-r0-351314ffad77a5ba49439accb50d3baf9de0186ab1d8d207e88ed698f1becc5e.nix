{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-lift-instances"; version = "0.1.14"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2016 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/th-lift-instances/";
      url = "";
      synopsis = "Lift instances for template-haskell for common data types.";
      description = "Most data types in haskell platform do not have Lift instances.\nThis package provides orphan instances for containers, text, bytestring and vector.\nIt also acts as a compat instances, definining instances not existing\nin @template-haskell@\n\nNote that <https://hackage.haskell.org/package/th-lift th-lift> package provides\nTemplate Haskell based derivation of @Lift@ instances (when you cannot use @DeriveLift@ extension),\nand <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for TH datatypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.th-lift)
          ];
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.th-lift-instances)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.nats)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
          };
        };
      };
    }