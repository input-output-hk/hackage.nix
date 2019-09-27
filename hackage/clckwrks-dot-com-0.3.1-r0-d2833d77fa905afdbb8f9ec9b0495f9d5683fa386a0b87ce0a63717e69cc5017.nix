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
    flags = { backups = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "clckwrks-dot-com"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "clckwrks.com";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "clckwrks-dot-com-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clckwrks" or (buildDepError "clckwrks"))
            (hsPkgs."clckwrks-theme-clckwrks" or (buildDepError "clckwrks-theme-clckwrks"))
            (hsPkgs."clckwrks-plugin-bugs" or (buildDepError "clckwrks-plugin-bugs"))
            (hsPkgs."clckwrks-plugin-media" or (buildDepError "clckwrks-plugin-media"))
            (hsPkgs."clckwrks-plugin-page" or (buildDepError "clckwrks-plugin-page"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."hsp" or (buildDepError "hsp"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."web-plugins" or (buildDepError "web-plugins"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or (buildToolDepError "hsx2hs")))
            ];
          buildable = true;
          };
        "clckwrks-dot-com-backups" = {
          depends = (pkgs.lib).optionals (flags.backups) [
            (hsPkgs."archive" or (buildDepError "archive"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Extra" or (buildDepError "Extra"))
            ];
          buildable = if flags.backups then true else false;
          };
        };
      };
    }