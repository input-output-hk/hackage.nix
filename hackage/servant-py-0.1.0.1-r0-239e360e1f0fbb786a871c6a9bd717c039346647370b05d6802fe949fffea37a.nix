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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-py"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Erik Aker";
      maintainer = "eraker@gmail.com";
      author = "Erik Aker";
      homepage = "https://github.com/pellagic-puffbomb/servant-py#readme";
      url = "";
      synopsis = "Automatically derive python functions to query servant webservices.";
      description = "Automatically derive python functions to query servant webservices.\n\nSupports deriving functions using Python's requests library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."charset" or (buildDepError "charset"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."servant-foreign" or (buildDepError "servant-foreign"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "servant-py-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."servant-py" or (buildDepError "servant-py"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-foreign" or (buildDepError "servant-foreign"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."servant-blaze" or (buildDepError "servant-blaze"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      tests = {
        "servant-py-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."servant-py" or (buildDepError "servant-py"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-foreign" or (buildDepError "servant-foreign"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }