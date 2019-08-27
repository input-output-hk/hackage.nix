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
      identifier = { name = "configurator-export"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2016";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "http://github.com/mstksg/configurator-export";
      url = "";
      synopsis = "Pretty printer and exporter for configurations from\nthe \"configurator\" library.";
      description = "Pretty printers and exporters for 'Config's from the\n<http://hackage.haskell.org/package/configurator-0.3.0.0 configurator>\nlibrary, in \"Data.Configurator\".\n\nAll results are intended to be valid parsing files in the\nconfiguration file syntax of the library.\n\nFor a full round trip:\n\n> main = do\n>   cfg <- load [Required \"config.cfg\"]\n>   writeConf \"config.cfg\" cfg\n\nThis should load the config file, parse it, and then\nre-export it, rewriting the original config file.  The\nresult should be an identical configuration file (with\nkeys potentially re-arranged and re-sorted, comments\nremoved, etc.)\n\nSee the \"Data.Configurator.Export\" module for more\ndetails and ways to modify the output style.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhc && (compiler.version).ge "7.10"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
        };
      tests = {
        "configurator-export-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."configurator-export" or (buildDepError "configurator-export"))
            ];
          };
        };
      };
    }