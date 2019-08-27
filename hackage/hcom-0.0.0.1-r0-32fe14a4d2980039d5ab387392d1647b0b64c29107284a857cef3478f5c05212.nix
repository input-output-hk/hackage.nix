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
      specVersion = "1.2";
      identifier = { name = "hcom"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Larsson <niklas@mm.st>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell COM support library";
      description = "Supporting for writing COM\\/Automation clients in Haskell, and for\npackaging up your Haskell code behind a COM-callable veneer.\n\nThis is an updated version of the original `com` library that works\nwith newer GHCs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (system.isWindows) [
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."kernel32" or (sysDepError "kernel32"))
          (pkgs."user32" or (sysDepError "user32"))
          (pkgs."ole32" or (sysDepError "ole32"))
          (pkgs."oleaut32" or (sysDepError "oleaut32"))
          (pkgs."advapi32" or (sysDepError "advapi32"))
          ];
        };
      };
    }