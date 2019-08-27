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
    flags = { base4 = true; tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "The haskell application server stack + code generation";
      description = "The haskell application server stack";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."happstack-data" or (buildDepError "happstack-data"))
          (hsPkgs."happstack-ixset" or (buildDepError "happstack-ixset"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
          (hsPkgs."happstack-util" or (buildDepError "happstack-util"))
          (hsPkgs."harp" or (buildDepError "harp"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hsx" or (buildDepError "hsx"))
          (hsPkgs."hsp" or (buildDepError "hsp"))
          (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
            ]);
        };
      exes = {
        "happstack" = {
          depends = [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "happstack-tests" = {
          depends = [ (hsPkgs."HUnit" or (buildDepError "HUnit")) ];
          };
        };
      };
    }