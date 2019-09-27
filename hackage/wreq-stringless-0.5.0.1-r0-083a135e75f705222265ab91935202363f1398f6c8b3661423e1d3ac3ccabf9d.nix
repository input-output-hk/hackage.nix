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
      identifier = { name = "wreq-stringless"; version = "0.5.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Juergen Keck <jhyphenkeck@gmail.com>";
      author = "Juergen Keck";
      homepage = "https://github.com/j-keck/wreq-stringless#readme";
      url = "";
      synopsis = "Simple wrapper to use wreq without Strings";
      description = "This library wraps all functions from @Network.Wreq@ which expects a 'String'\nand replaces the 'String' Type with the \"Network.Wreq.StringLess.StringLike\" Type-Class.\n\nInstances for \"Network.Wreq.StringLess.StringLike\" are given for:\n\n* \"Data.Text\"\n\n* \"Data.Text.Lazy\"\n\n* \"Data.ByteString.UTF8\"\n\n* \"Data.ByteString.Lazy.UTF8\"\n\nSo you can use any of this types instead of 'String'.\n\nTo use this library, replace your the @wreq@ dependency from your @cabal@\nfile with @wreq-stringless@ and import \"Network.Wreq.StringLess\" instead\nof @Network.Wreq@.\n\nThe versions of this library correspond with the version of @wreq@.\n\nsee <https://github.com/j-keck/wreq-stringless/tree/master/examples> for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          ];
        buildable = true;
        };
      };
    }