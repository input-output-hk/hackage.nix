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
    flags = { allbackends = false; example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "keyring"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "(C) 2014, 2015 Sebastian Wiesner";
      maintainer = "swiesner@lunaryorn.com";
      author = "Sebastian Wiesner";
      homepage = "https://github.com/lunaryorn/haskell-keyring";
      url = "";
      synopsis = "Keyring access";
      description = "keyring provides access to the system's keyring to securely store passwords.\n\nCurrently this library supports the following keyring implementations:\n\n* Keychain on OS X\n\n* KWallet on KDE\n\nThe \"System.Keyring\" module provides the high-level functions 'getPassword'\nand 'setPassword' to easily get and set passwords in the keyring of the\ncurrent user.  The appropriate backend is chosen automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optionals (system.isOsx) [
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ]) ++ (pkgs.lib).optional (!system.isOsx || flags.allbackends) (hsPkgs."udbus" or (buildDepError "udbus"));
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."Security" or (sysDepError "Security"))
          (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
          ];
        build-tools = (pkgs.lib).optional (system.isOsx) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
        };
      exes = {
        "keyring-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."keyring" or (buildDepError "keyring"))
            ];
          };
        };
      };
    }