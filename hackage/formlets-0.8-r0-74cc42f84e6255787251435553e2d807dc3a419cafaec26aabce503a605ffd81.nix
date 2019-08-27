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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "formlets"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Doug Beardsley <mightybyte@gmail.com>";
      author = "";
      homepage = "http://github.com/chriseidhof/formlets/tree/master";
      url = "";
      synopsis = "Formlets implemented in Haskell";
      description = "A modular way to build forms based on applicative functors,\nbased on the work described in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      };
    }