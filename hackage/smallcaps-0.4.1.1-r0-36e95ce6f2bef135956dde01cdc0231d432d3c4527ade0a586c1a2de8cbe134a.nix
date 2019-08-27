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
      identifier = { name = "smallcaps"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stefan.berthold@gmx.net";
      author = "Stefan Berthold";
      homepage = "";
      url = "";
      synopsis = "Flatten camel case text in LaTeX files";
      description = "smallcaps is a pre-processor library for LaTeX files.\nThe library comes with an executable that makes most\nfunctionality accessible through a command line interface.\nThe pre-processor formats sequences of uppercase letters\nwith TeX's @\\\\small@ macro or whatever you configure.\nUppercase letters at the beginning of sentences are not\nformatted. Other formatting conditions can be configured by\nthe user.\n\nThe executable can be configured through its command line\narguments as well as through TeX comments. In the default\nconfiguration, lesscase does not change the content of any\nmacro argument or environment (different from document).\nMore and less restrictive configuration profiles can be\nactivated and adapted. Configurations can be stored and\nrestored at any time, even while processing the input\nfile.\n\n[\"Text.SmallCaps\"]\nexports the main program as library.\n\n[\"Text.SmallCaps.Config\"]\nspecifies the default configuration values for\n\"Text.SmallCaps\".\n\n[\"Text.SmallCaps.TeXParser\"]\nparses 'Text' to a 'TeXElement' token stream.\n\n[\"Text.SmallCaps.TeXLaTeXParser\"]\nparses a 'TeXElement' token stream and produces a\n'LaTeXElement' token stream.\n\n[\"Text.SmallCaps.DocumentParser\"]\nreplaces uppercase letters in 'LaTeXElement' token\nstreams.\n\nA simple program can be defined as\n\n@\nimport Data.Default   ( def )\nimport Text.SmallCaps ( smallcaps )\nmain = smallcaps def\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "lesscase" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        };
      tests = {
        "texparser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        "texlatexparser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        "inputfiles" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        "configparser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        "printableparser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        "documentparser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."smallcaps" or (buildDepError "smallcaps"))
            ];
          };
        };
      };
    }