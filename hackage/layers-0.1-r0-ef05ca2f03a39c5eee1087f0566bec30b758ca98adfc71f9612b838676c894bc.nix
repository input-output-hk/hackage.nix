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
      identifier = { name = "layers"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shane@duairc.com";
      author = "Shane O'Brien";
      homepage = "http://github.com/duairc/layers";
      url = "";
      synopsis = "Modular type class machinery for monad transformer stacks.";
      description = "The @layers@ package provides the type class machinery needed to make monads\nbuilt out of stacks of monad transformers easy to use. It introduces the\nconcept of monad layers, which are a generalisation of monad transformers.\nThe type class machinery provided by and the design patterns suggested by\n@layers@ allow for much more modularity than is possible with the existing\ntype class machinery and design patterns. With @layers@ it is possible to\nuse arbitrary monad interfaces (monad interfaces are what we call the sort\nof type classes that you see in the @mtl@ and similar packages) with\narbtirary monad transformers (by monad transformers here, we are\nspecifically to monad constructors, such as the ones defined in\n@transformers@), without ever having to explicitly define how to lift\nspecific interfaces through specific transformers.\n\n@layers@ improves upon and/or replaces, in part or in whole, the following\nlist of packages: @transformers@, @mtl@, @mmtl@, @transformers-base@,\n@monad-control@, @lifted-base@, @monad-peel@, @MonadCatchIO-transformers@,\n@MonadCatchIO-mtl@, @exception-transformers@, @monad-abort-fd@ and probably\nmore too. There have been many attempts to either improve upoin or work\naround the deficiencies of the existing type class machinery for monad\ntransformer stacks, but we believe @layers@ is the most complete of any of\nthese so far.\n\nA comprehensive overview of the motivation behind @layers@ and an\nexplanation of the design decisions taken is given in\n\"Documentation.Layers.Overview\". It is /highly recommended/ that you read\nthis if you are considering using this package. The core type classes of the\npackage are defined in \"Control.Monad.Layer\" (this can be thought of as\nequivalent to or a replacement of \"Control.Monad.Trans.Class\" from\n@transformers@). The rest of the modules in this package export monad\ninterfaces, in the \"Control.Monad.Interface\" hierarchy, including\nreplacements for all of the monad interfaces of the @mtl@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }