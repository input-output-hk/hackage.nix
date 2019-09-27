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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "doc-review"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josh.hoyt@galois.com";
      author = "Josh Hoyt";
      homepage = "https://github.com/j3h/doc-review";
      url = "";
      synopsis = "Document review Web application, like http://book.realworldhaskell.org/";
      description = "A standalone Web application that provides for\nparagraph-by-paragraph commentary by document reviewers,\nbased on the user interface from\n<http://book.realworldhaskell.org/>. Any Web page can be\nconfigured to work with the service by adding just a\nlittle bit of Javascript that makes it load the comment\nWeb UI. See the README or the homepage for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doc-review" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."heist" or (buildDepError "heist"))
            (hsPkgs."hexpat" or (buildDepError "hexpat"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."sqlite" or (buildDepError "sqlite"))
            (hsPkgs."tagchup" or (buildDepError "tagchup"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."xhtml-combinators" or (buildDepError "xhtml-combinators"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            ];
          buildable = true;
          };
        "doc-review-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }