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
      identifier = { name = "hexpat-iteratee"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Stephen Blackheath <http://blacksapphire.com/antispam/>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "Chunked XML parsing using iteratees";
      description = "This package provides chunked XML parsing using iteratees.  It is especially suited\nto implementing XML-based socket protocols, but is useful wherever lazy parsing is\nneeded on production systems where you can't tolerate the problems that come with\nHaskell's lazy I\\/O.\n\nThe XML is presented as a lazy tree, and is processed by a handler implemented using\na monad transformer called XMLT.  The resulting monad is suspended whenever it tries\nto read a part of the tree that hasn't been parsed yet, and continued as soon as it\nis available.\nThe resulting code looks and functions very much as if you were using lazy I\\/O,\nonly without the associated problems. Your handlers can have effects, yet they\ncome out in quite a functional style.\n\nBackground:  Haskell's lazy I\\/O can be problematic in some applications because it\ndoesn't handle I\\/O errors properly, and you can't predict when it will clean up its\nresources, which could result in file handles running out.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."iteratee" or (buildDepError "iteratee"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          (hsPkgs."List" or (buildDepError "List"))
          ];
        };
      };
    }