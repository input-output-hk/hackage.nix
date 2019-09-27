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
      identifier = { name = "prelude-edsl"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/prelude-edsl";
      url = "";
      synopsis = "An EDSL-motivated subset of the Prelude";
      description = "\"Prelude.EDSL\" exports a small subset of the \"Prelude\":\nsome standard types and classes plus a small number of\nconvenience functions.\n\nThe motivation for this module is that it is common for\ndeeply embedded domain-specific languages (EDSLs) to\nredefine identifiers from the \"Prelude\", so EDSL users must\nhide the \"Prelude\" in their programs. However, there are\ncertain useful things from the \"Prelude\" that are usually\nnot redefined -- function composition being one example --\nso it becomes quite awkward to have to hide everything from\nthe \"Prelude\".\n\nThe reason for exporting e.g the @Num@ class but not @Ord@\nis that it is possible to give an instance for deep\nembeddings of the former but not the latter. For example,\nassuming @Exp@ is the type of a deep embedding, we can have\n\n> (+) :: Exp -> Exp -> Exp\n\nbut not\n\n> (<) :: Exp -> Exp -> Exp\n\n(because @(<)@ has a @Bool@ result, regardless of the type\nof the arguments).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }