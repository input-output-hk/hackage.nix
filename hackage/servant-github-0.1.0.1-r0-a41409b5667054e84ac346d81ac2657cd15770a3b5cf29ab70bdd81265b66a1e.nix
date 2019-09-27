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
      identifier = { name = "servant-github"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Finlay Thompson";
      maintainer = "finlay.thompson@gmail.com";
      author = "Finlay Thompson";
      homepage = "http://github.com/finlay/servant-github#readme";
      url = "";
      synopsis = "Bindings to GitHub API using servant.";
      description = "This package provides a servant-client based client\nfor accessing the <https://developer.github.com/v3/ GitHub API v3>.\n\nThe github client is provided through the 'Network.GitHub.GitHub' monad,\nwhich provides support for managing the user-agent (a requirement\nfor github), an authentication token, and, pagination\nsupport when the resulting value is a list.\n\n>\n> import System.Environment\n> import Data.String\n> import Network.GitHub\n>\n> main = do\n>    token <- fmap fromString <\$> lookupEnv \"GITHUB_TOKEN\"\n>    result <- runGitHub userOrganisations token\n>    case result of\n>        Left e  ->  print e\n>        Right orgs -> mapM_ print orgs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."http-link-header" or (buildDepError "http-link-header"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "servant-github-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."servant-github" or (buildDepError "servant-github"))
            ];
          buildable = true;
          };
        };
      tests = {
        "servant-github-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."servant-github" or (buildDepError "servant-github"))
            ];
          buildable = true;
          };
        };
      };
    }