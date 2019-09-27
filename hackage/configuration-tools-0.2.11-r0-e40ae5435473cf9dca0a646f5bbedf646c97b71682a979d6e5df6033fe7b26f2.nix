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
    flags = { remote-configs = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "configuration-tools"; version = "0.2.11"; };
      license = "MIT";
      copyright = "Copyright (c) 2014-2015 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "https://github.com/alephcloud/hs-configuration-tools";
      url = "";
      synopsis = "Tools for specifying and parsing configurations";
      description = "Tools for specifying and parsing configurations\n\nThis package provides a collection of utils on top of the packages\n<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,\n<http://hackage.haskell.org/package/aeson aeson>, and\n<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and\napplications in a convenient and composable way.\n\nThe main features are\n\n1. configuration management through integration of command line option\nparsing and configuration files and\n\n2. a @Setup.hs@ file that generates a @PkgInfo@ module for each component\nof a package that provides information about the package and the build.\n\nDocumentation on how to use this package can be found in the\n<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>\nand in the API documentation of the modules \"Configuration.Utils\" and\n\"Configuration.Utils.Setup\".";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          ] ++ (pkgs.lib).optionals (flags.remote-configs) [
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."x509-system" or (buildDepError "x509-system"))
          (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      tests = {
        "url-example-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ] ++ (pkgs.lib).optionals (flags.remote-configs) [
            (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            ];
          buildable = true;
          };
        "trivial" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
            ];
          buildable = true;
          };
        };
      };
    }