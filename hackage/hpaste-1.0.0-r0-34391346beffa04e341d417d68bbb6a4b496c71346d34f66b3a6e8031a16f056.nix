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
      specVersion = "1.2";
      identifier = { name = "hpaste"; version = "1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2010-2013 by Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "http://hpaste.org/";
      url = "";
      synopsis = "Haskell paste web site.";
      description = "Haskell paste web site. Includes: syntax highlighting for\nvarious languages, HLint suggestions for Haskell, annotations,\nrevisions, diffs between revisions, announcement to IRC channels,\nbrowsing of author's pastes, spam reporting/deletion,\nSpamAssassin-based spam protection, secret/private pastes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpaste" = {
          depends = [
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."css" or (buildDepError "css"))
            (hsPkgs."named-formlet" or (buildDepError "named-formlet"))
            (hsPkgs."snap-app" or (buildDepError "snap-app"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."HJScript" or (buildDepError "HJScript"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."download-curl" or (buildDepError "download-curl"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            ];
          };
        };
      };
    }