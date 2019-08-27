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
      identifier = { name = "trifecta"; version = "0.36.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/trifecta/";
      url = "";
      synopsis = "A modern parser combinator library with convenient diagnostics";
      description = "A modern unicode-aware parser combinator library with slicing and Clang-style colored diagnostics\n\nCurrent documentation is available from <http://ekmett.github.com/trifecta/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."reducers" or (buildDepError "reducers"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."pointed" or (buildDepError "pointed"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."terminfo" or (buildDepError "terminfo"))
          (hsPkgs."keys" or (buildDepError "keys"))
          (hsPkgs."wl-pprint-extras" or (buildDepError "wl-pprint-extras"))
          (hsPkgs."wl-pprint-terminfo" or (buildDepError "wl-pprint-terminfo"))
          ];
        };
      };
    }