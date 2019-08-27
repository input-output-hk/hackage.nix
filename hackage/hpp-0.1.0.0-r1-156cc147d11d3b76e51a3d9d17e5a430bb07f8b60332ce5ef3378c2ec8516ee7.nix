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
      identifier = { name = "hpp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "https://github.com/acowley/hpp";
      url = "";
      synopsis = "A Haskell pre-processor";
      description = "@hpp@ is a Haskell pre-processor that is also a\nC89/C90-compatible pre-processor (with the addition of a\n@--cpp@ flag). It is packaged as both a library and\nan executable.\n\nTo use as a Haskell preprocessor for resolving @#ifdef@\nconditionals and simple macro expansion while still\nallowing multi-line string literals, an invocation might\nlook like,\n\n@\nhpp -DDEBUG Foo.hs\n@\n\nTo use as a C preprocessor, an invocation might look\nlike,\n\n@\nhpp -DDEBUG --cpp foo.c\n@\n\nTo have GHC use @hpp@ as the C pre-processor, add this\nline to the top of a Haskell source file that makes use\nof the @CPP@ @LANGUAGE@ pragma.\n\n@\n&#123;-\\# OPTIONS_GHC -cpp -pgmPhpp -optP\\-\\-cpp \\#-&#125;\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or (buildDepError "transformers"));
        };
      exes = {
        "hpp" = {
          depends = [
            (hsPkgs."hpp" or (buildDepError "hpp"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }