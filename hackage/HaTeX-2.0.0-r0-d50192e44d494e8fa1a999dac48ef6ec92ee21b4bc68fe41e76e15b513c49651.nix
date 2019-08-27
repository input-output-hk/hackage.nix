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
      identifier = { name = "HaTeX"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danieldiaz@asofilak.es";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/HaTeX";
      url = "";
      synopsis = "Library for write LaTeX code.";
      description = "You can write LaTeX files using this package.\nSee Text.LaTeX for a brief introduction.\n\nReport any bug or suggestion to the author:\n\ndanieldiaz\\@asofilak.es\n\nAlso, if you have an example where you use HaTeX, you could send it to the same email. Thanks in advance.\n\nChanges from last version:\n\n* IMPORTANT: @LaTeXM@ monad has been replaced by @LaTeXT@ monadic transformer.\nSo, change types of form @LaTeXM a@ (or @LaTeX@) to @LaTeXT m a@ (or @LaTeX m@).\nThis allow you to use computations of any monad through a lift function.\n\n* Function @iolx@ replaced by @mlx@.\n\n* IMPORTANT: IO module has been removed.\n\n* Added new documentation.\n\n* Added new macros.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."dstring" or (buildDepError "dstring"))
          (hsPkgs."to-string-class" or (buildDepError "to-string-class"))
          (hsPkgs."string-combinators" or (buildDepError "string-combinators"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      };
    }