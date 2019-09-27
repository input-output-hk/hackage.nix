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
    flags = { quatstatic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vrpn"; version = "0.2.1.4"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/vrpn";
      url = "https://bitbucket.org/functionally/vrpn/vrp-0.2.1.4.tar.gz";
      synopsis = "Bindings to VRPN.";
      description = "See \\<<https://github.com/vrpn/vrpn/wiki>\\> for information on VRPN.  This has been tested using VRPN 07.30 on Linux.\n\nIf the VRPN libraries are static and this package is used from Template Haskell, then the package needs to be configured with the QuatStatic flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = if flags.quatstatic
          then [
            (pkgs."vrpn" or (sysDepError "vrpn"))
            (pkgs."quat" or (sysDepError "quat"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ]
          else [
            (pkgs."vrpn" or (sysDepError "vrpn"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ];
        buildable = true;
        };
      exes = {
        "test-vrpn" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          libs = [
            (pkgs."vrpn" or (sysDepError "vrpn"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      };
    }