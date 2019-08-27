let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "kinds"; version = "0.0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "© 2009–2010 Brandenburgische Technische Universität Cottbus;\n© 2011–2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/kinds";
      url = "http://hackage.haskell.org/packages/archive/kinds/0.0.1.5/kinds-0.0.1.5.tar.gz";
      synopsis = "Emulation of subkinds and subkind polymorphism";
      description = "Subkinds are the kind-level analog to subtypes. A kind denotes a set of types, and a\nsubkind of some base kind denotes a subset of the base kind&#x2019;s set of types.\nHaskell has no support for subkinds and subkind polymorphism. However, this package\ncan be used to emulate subkinds of kind&#xA0;@*@ and subkind variables.\n\nTo define a new subkind, the user declares a type that represents the subkind, and\ninstantiates some classes. Afterwards, the user can declare types to be of that\nsubkind and universally quantify over the inhabitants of the subkind. Since subkinds\nare represented by types, type-level polymorphism can be used to emulate kind-level\npolymorphism.\n\nFor detailed information, please refer to Section&#xA0;6 of the paper\n/Generic Record Combinators with Static Type Checking/.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }