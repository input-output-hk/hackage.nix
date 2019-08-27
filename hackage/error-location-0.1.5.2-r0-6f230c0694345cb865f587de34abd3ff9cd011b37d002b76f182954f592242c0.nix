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
      specVersion = "1.6";
      identifier = { name = "error-location"; version = "0.1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Greg Weber";
      homepage = "https://github.com/gregwebs/ErrorLocation.hs";
      url = "";
      synopsis = "error functions that show file location information";
      description = "Error functions that give file location information\n\n> \$(err \"OH NO!\")\n>\n> main:Main main.hs:16:1 OH NO!\n\nNotice how it displays package:module file:line:character\nIt exposes the functions err (error), undef (undefined), and trc (Debug.Trace.trace). All of these behave the same as their normal counterpart but also spit out a location.\n\nI also included my favorite helper, debug, which is like trace but just show the value.\n\n> debug [1,2,3]\n>\n> DEBUG: [1,2,3]\n> [1,2,3]\n\nAnd The Template Haskell version.\n\n> \$(dbg) [1,2,3]\n>\n> DEBUG main:Main main.hs:1:3 [1,2,3]\n> [1,2,3]\n\nSee module for a listing of all the functions with short descriptions, and the homepage for some more examples https://github.com/gregwebs/ErrorLocation.hs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }