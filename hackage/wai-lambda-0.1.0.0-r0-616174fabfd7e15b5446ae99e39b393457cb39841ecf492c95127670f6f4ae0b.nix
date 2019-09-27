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
      identifier = { name = "wai-lambda"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2019 David Dal Busco and Nicolas Mattia";
      maintainer = "Nicolas Mattia <nicolas@nmattia.com>";
      author = "Nicolas Mattia <nicolas@nmattia.com>";
      homepage = "https://github.com/deckgo/wai-lambda#readme";
      url = "";
      synopsis = "Haskell Webapps on AWS Lambda";
      description = "\n![wai-lambda](https://github.com/deckgo/wai-lambda/raw/master/assets/wai-lambda-small.png)\n\nTurn any [wai](https://www.stackage.org/package/wai) webapp ( [spock](https://www.spock.li/), [servant](https://docs.servant.dev/en/stable/), etc) into a handler for AWS [Lambda](https://aws.amazon.com/lambda/) and [API Gateway](https://aws.amazon.com/api-gateway/) requests.\n\nWorks with any Lambda environment (nodejs, python, etc). Find out more in the [README](https://github.com/deckgo/wai-lambda#wai-lambda---haskell-webapps-on-aws-lambda).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vault" or (buildDepError "vault"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "wai-lambda" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vault" or (buildDepError "vault"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-lambda" or (buildDepError "wai-lambda"))
            ];
          buildable = true;
          };
        };
      };
    }