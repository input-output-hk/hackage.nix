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
      identifier = { name = "repr"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 Bas van Dijk";
      maintainer = "v.dijk.bas@gmail.com";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Render overloaded expressions to their textual representation.";
      description = "This library allows you to render overloaded expressions to their\ntextual representation. For example:\n\n@\n*Repr> let r = 1.5 + 2 + (3 + (-4) * (5 - pi / sqrt 6)) :: Repr Double\n*Repr> extract r\n17.281195923884734\n*Repr> show rd\n\\\"1.5 + 2.0 + (3.0 + negate 4.0 * (5.0 - pi / sqrt 6.0))\\\"\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."string-combinators" or (buildDepError "string-combinators"))
          (hsPkgs."dstring" or (buildDepError "dstring"))
          ];
        };
      };
    }