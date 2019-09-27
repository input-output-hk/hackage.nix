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
    flags = { split-base = true; cli = false; };
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "system-uuid"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/system-uuid/";
      url = "";
      synopsis = "Bindings to system UUID functions.";
      description = "Bindings to the native UUID generator for a number of platforms. Please\ncontact the author if your platform is not supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."uuid" or (sysDepError "uuid")) ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or (sysDepError "rpcrt4"));
        buildable = true;
        };
      exes = {
        "hooty" = {
          depends = [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          libs = (pkgs.lib).optional (system.isLinux) (pkgs."uuid" or (sysDepError "uuid")) ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or (sysDepError "rpcrt4"));
          buildable = if flags.cli then true else false;
          };
        };
      };
    }