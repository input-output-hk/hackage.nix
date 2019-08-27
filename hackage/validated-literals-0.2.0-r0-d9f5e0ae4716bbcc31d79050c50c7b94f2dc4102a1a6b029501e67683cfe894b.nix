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
      identifier = { name = "validated-literals"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2015 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/validated-literals";
      url = "";
      synopsis = "Compile-time checking for partial smart-constructors";
      description = "To disallow invalid input it is common to define (new)types with hidden\ndata constructors. Forcing the user to go through a smart-constructor that\nenforces invariants and returns @Maybe ResultType@, preventing the\nconstruction of data with invalid values.\n\nHowever, it is __also__ common to want to include literal values of such\ntypes in source text. Things of textual literals for HTML, HTTP, etc.\nIn such cases smart-constructors force us to handle potential conversion\nfailures at runtime, or abusing functions like @fromJust@ to break away all\nthe safety smart-constructors provide. All this despite the fact that we\ncan statically know at compile time that the conversion will always succeed\nor always fails.\n\nThis package provides a typeclasses for using TH to validate the\ncorrectness of provided literals at compile. This lets you define, e.g.,\n@newtype Even = Even Integer@ and write:\n\n@\nx :: Even\nx = \$\$(valid 38)\n@\n\nThis will check, at compile time, that the provided @Integer@ is, in fact,\neven and unwrap it from @Maybe@, avoiding the runtime check.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      };
    }