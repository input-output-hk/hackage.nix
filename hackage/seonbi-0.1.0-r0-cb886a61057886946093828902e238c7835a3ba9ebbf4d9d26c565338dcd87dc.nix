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
    flags = { iconv = false; static = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "seonbi"; version = "0.1.0"; };
      license = "LGPL-2.1-only";
      copyright = "© 2018–2019 Hong Minhee";
      maintainer = "Hong Minhee <hong.minhee@gmail.com>";
      author = "Hong Minhee <hong.minhee@gmail.com>";
      homepage = "https://github.com/dahlia/seonbi";
      url = "";
      synopsis = "SmartyPants for Korean language";
      description = "Please see the README.md on GitHub at <https://github.com/dahlia/seonbi>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client or (buildToolDepError "http-client")))
        (hsPkgs.buildPackages.temporary or (pkgs.buildPackages.temporary or (buildToolDepError "temporary")))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text or (buildToolDepError "text")))
        (hsPkgs.buildPackages.zip or (pkgs.buildPackages.zip or (buildToolDepError "zip")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-trie" or (buildDepError "text-trie"))
          ];
        buildable = true;
        };
      exes = {
        "seonbi" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.iconv
            then [
              (hsPkgs."cases" or (buildDepError "cases"))
              (hsPkgs."html-charset" or (buildDepError "html-charset"))
              (hsPkgs."iconv" or (buildDepError "iconv"))
              (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
              (hsPkgs."seonbi" or (buildDepError "seonbi"))
              ]
            else [
              (hsPkgs."cases" or (buildDepError "cases"))
              (hsPkgs."html-charset" or (buildDepError "html-charset"))
              (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
              (hsPkgs."seonbi" or (buildDepError "seonbi"))
              ]);
          buildable = true;
          };
        "seonbi-api" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."seonbi" or (buildDepError "seonbi"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (buildDepError "doctest-discover"))
            (hsPkgs."seonbi" or (buildDepError "seonbi"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unicode-show" or (buildDepError "unicode-show"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."seonbi" or (buildDepError "seonbi"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }