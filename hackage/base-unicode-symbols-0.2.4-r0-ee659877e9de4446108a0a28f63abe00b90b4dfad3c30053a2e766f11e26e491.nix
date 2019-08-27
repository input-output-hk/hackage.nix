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
    flags = { old-base = false; base-4-8 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "base-unicode-symbols"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "2009–2019 Roel van Dijk <roel@lambdacube.nl>";
      maintainer = "Roel van Dijk <roel@lambdacube.nl>";
      author = "Roel van Dijk <roel@lambdacube.nl>";
      homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
      url = "";
      synopsis = "Unicode alternatives for common functions and operators";
      description = "This package defines new symbols for a number of functions,\noperators and types in the base package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.\n\nFor further Unicode goodness you can enable the @UnicodeSyntax@\nlanguage extension [1]. This extension enables Unicode characters\nto be used to stand for certain ASCII character sequences,\ni.e. &#x2192; instead of @->@, &#x2200; instead of @forall@ and many\nothers.\n\nOriginal idea by P&#xE9;ter Divi&#xE1;nszky.\n\n\\[1] <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#unicode-syntax>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }