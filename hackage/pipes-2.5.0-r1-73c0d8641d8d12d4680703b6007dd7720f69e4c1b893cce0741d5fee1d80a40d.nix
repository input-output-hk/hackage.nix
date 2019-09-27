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
      identifier = { name = "pipes"; version = "2.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compositional pipelines";
      description = "\\\"Iteratees done right\\\".  This library implements\niteratees\\/enumerators\\/enumeratees simply and elegantly, using different\nnaming conventions.\n\nAdvantages over traditional iteratee implementations:\n\n* /Concise API/: This library uses a few simple abstractions with a very high\npower-to-weight ratio to reduce adoption time.\n\n* /Bidirectionality/: The library offers bidirectional communication\n\n* /Blazing fast/: Currently the fastest iteratee implementation\n\n* /Clear semantics/: All abstractions are grounded in category theory, which\nleads to intuitive behavior (and fewer bugs, if any!).\n\n* /Extension Framework/: You can elegantly mix and match extensions to the\nbase type and easily create your own!\n\n* /Extensive Documentation/: Second to none!\n\nI recommend you begin by reading \"Control.Pipe.Tutorial\" which introduces the\nbasic concepts using the simpler unidirectional 'Pipe' API.  Then move on to\n\"Control.Proxy.Tutorial\", which introduces the 'Proxy' type which forms the\ncore abstraction of this library.  To use extensions or define your own, check\nout \"Control.Proxy.Trans.Tutorial\".\n\nI will soon replace \"Control.Frame\" with a superior resource-management\nsolution, so new users of the library should avoid using it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."index-core" or (buildDepError "index-core"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }