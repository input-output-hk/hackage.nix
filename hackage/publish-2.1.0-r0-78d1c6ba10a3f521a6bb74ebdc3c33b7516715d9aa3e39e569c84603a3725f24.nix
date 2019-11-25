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
      identifier = { name = "publish"; version = "2.1.0"; };
      license = "MIT";
      copyright = "© 2016-2019 Operational Dynamics and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/publish#readme";
      url = "";
      synopsis = "Publishing tools for papers, books, and presentations";
      description = "Tools for rendering markdown-centric documents into PDFs.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/publish/blob/master/README.markdown README>\non GitHub.\n\nThe main program, @render@, is available via a Docker image at\n<https://hub.docker.com/r/oprdyn/publish-render docker.io/oprdyn/publish-render:latest>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "format" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."chronologique" or (buildDepError "chronologique"))
            (hsPkgs."core-program" or (buildDepError "core-program"))
            (hsPkgs."core-text" or (buildDepError "core-text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hinotify" or (buildDepError "hinotify"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "render" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."chronologique" or (buildDepError "chronologique"))
            (hsPkgs."core-program" or (buildDepError "core-program"))
            (hsPkgs."core-text" or (buildDepError "core-text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hinotify" or (buildDepError "hinotify"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."chronologique" or (buildDepError "chronologique"))
            (hsPkgs."core-program" or (buildDepError "core-program"))
            (hsPkgs."core-text" or (buildDepError "core-text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hinotify" or (buildDepError "hinotify"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }