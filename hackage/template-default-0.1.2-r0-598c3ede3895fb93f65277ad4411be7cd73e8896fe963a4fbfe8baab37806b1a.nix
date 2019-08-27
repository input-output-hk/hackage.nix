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
      specVersion = "1.8";
      identifier = { name = "template-default"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2012";
      maintainer = "Daniel Wagner <daniel@wagner-home.com>";
      author = "Daniel Wagner";
      homepage = "https://github.com/haskell-pkg-janitors/template-default";
      url = "";
      synopsis = "declaring Default instances just got even easier";
      description = "Declaring instances of the @Default@ type class has always\nbeen pretty mechanical. This package makes the compiler do\nthe mechanical bit.  This has the benefit that even less\nthought is required, and the instance will automatically\nbe corrected when the definition of the data type changes\n(say, to add more arguments to the constructor). Usage\nlooks like this, for example:\n\n> (-# LANGUAGE TemplateHaskell #-)\n> import Data.Default.TH\n> data List a = Nil | Cons a (List a)\n> deriveDefault ''List\n\nThis example results in the following instance:\n\n> instance Data.Default.Default (List a_ad2) where\n>   Data.Default.def = Nil";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }