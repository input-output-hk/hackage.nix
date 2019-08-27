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
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "configurator-ng"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2011-2014 Bryan O'Sullivan\nCopyright 2015-2016 Leon P Smith";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Bryan O'Sullivan, Leon P Smith";
      homepage = "http://github.com/lpsmith/configurator-ng";
      url = "";
      synopsis = "The next generation of configuration management";
      description = "A configuration management library for programs and daemons.\n\nFeatures include:\n\n* A simple, but flexible, configuration language, supporting several\nof the most commonly needed types of data, along with\ninterpolation of strings from the configuration or the system\nenvironment (e.g. @\$(HOME)@).\n\n* An @import@ directive allows the configuration of a complex\napplication to be split across several smaller files, or common\nconfiguration data to be shared across several applications.\n\n* An expressive applicative/monadic high-level parsing interface\nto gracefully scale to more complicated configuration needs,  with\npowerful diagnostic messaging mechanism.\n\nFor details of the configuration file format, see\n<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."critbit" or (buildDepError "critbit"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."configurator-ng" or (buildDepError "configurator-ng"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }