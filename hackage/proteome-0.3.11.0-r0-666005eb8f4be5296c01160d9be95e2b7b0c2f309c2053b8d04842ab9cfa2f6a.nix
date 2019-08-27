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
      specVersion = "1.12";
      identifier = { name = "proteome"; version = "0.3.11.0"; };
      license = "MIT";
      copyright = "2018 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/proteome-hs#readme";
      url = "";
      synopsis = "neovim project manager";
      description = "Please see the README on GitHub at <https://github.com/tek/proteome-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."messagepack" or (buildDepError "messagepack"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
          (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."strings" or (buildDepError "strings"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      exes = {
        "proteome" = {
          depends = [
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."messagepack" or (buildDepError "messagepack"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."proteome" or (buildDepError "proteome"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      tests = {
        "proteome-functional" = {
          depends = [
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."messagepack" or (buildDepError "messagepack"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."proteome" or (buildDepError "proteome"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        "proteome-unit" = {
          depends = [
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."messagepack" or (buildDepError "messagepack"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."proteome" or (buildDepError "proteome"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      };
    }