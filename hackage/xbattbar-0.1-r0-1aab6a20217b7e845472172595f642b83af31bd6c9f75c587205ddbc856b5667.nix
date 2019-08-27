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
      specVersion = "1.4";
      identifier = { name = "xbattbar"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "plhk@sdf.org";
      author = "Alexander Polakov";
      homepage = "https://github.com/polachok/xbattbar";
      url = "";
      synopsis = "Simple battery indicator";
      description = "XBattBar is a simple battery indicator for X11/Linux.\nIt draws a vertical or horizontal bar on your screen,\nwhich displays current power and charging status with\ncolor lines. A popup window appears when mouse cursor\nenters the indicator area. It shows current AC status,\nbattery level and time.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xbattbar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."select" or (buildDepError "select"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          };
        };
      };
    }