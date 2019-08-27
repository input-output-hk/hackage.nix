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
      specVersion = "1.10";
      identifier = { name = "definitive-base"; version = "1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "The base modules of the Definitive framework.";
      description = "The Definitive framework is an attempt at harnessing the declarative\nnature of Haskell to provide a solid and simple base for writing\nreal-world programs, as well as complex algorithms.\nThis package contains the base modules of the framework, and provides\nonly the most basic functionality, ranging from basic algebraic\nstructures, such as monoids and rings, to functors, applicative functors,\nmonads and transformers.\nLenses are used heavily in all the framework's abstractions, replacing\nmore traditional functions ('WriterT' and 'runWriterT' are implemented\nin the same isomorphism 'writerT', for example). When used wisely,\nlenses can greatly improve clarity in both code and thought, so I\ntried to provide for them in the most ubiquitous way possible,\ndefining them as soon as possible. Isomorphisms in particular are\nsurprisingly useful in many instances, from converting between types\nto acting on a value's representation as if it were the value itself.\nPackages using the Definitive framework should be compiled with the\nRebindableSyntax flag and include the Definitive module, which exports\nthe same interface as the Prelude, except for some extras.\nHere is a list of design differences between the standard Prelude\nand the Definitive framework :\n- The '+', '-', 'negate', and '*' are now part of the Semigroup,\nDisjonctive, Negative, Semiring classes instead of Num (default\ninstances are defined to reimplement the Prelude, making it easy\nto adjust your code for compatibility)\n- The mapM, traverseM, liftM, and such functions have been hidden,\nsince they only reimplement the traverse, map, and other simpler\nfunctions.\n- Lenses are used whenever possible instead of more usual functions.\nYou are encouraged to read the interface for the Algebra.Lens\nmodule, which contains everything you will need to be able to use\nlenses to their full potential (except maybe a good explanation).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          ];
        };
      };
    }