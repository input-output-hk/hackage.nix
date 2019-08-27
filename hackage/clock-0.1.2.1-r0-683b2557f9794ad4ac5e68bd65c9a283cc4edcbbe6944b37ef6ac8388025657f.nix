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
      specVersion = "0";
      identifier = { name = "clock"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Cetin Sert";
      maintainer = "Cetin Sert <cetin@sertcom.de>";
      author = "Cetin Sert <cetin@sertcom.de>";
      homepage = "http://sert.homedns.org/hs/clock";
      url = "";
      synopsis = "High-resolution clock and timer functions:\nrealtime, monotonic, cputime, etc.";
      description = "A package for convenient access to high-resolution\nclock and timer functions of different operating\nsystems.\n\nIt is planned to consist of two layers. The lower\nlayer will provide direct access to OS-specific\nclock and timer functions like clock_gettime of\nPosix or GetTickCount of Windows and its upper\nlayer shall then provide a common API for all\nsupported systems. Currently only the lower level\nis being developed.\n\n\nPOSIX reference: IEEE Std 1003.1-2008\n<http://www.opengroup.org/onlinepubs/9699919799/>,\n<http://www.opengroup.org/onlinepubs/9699919799/functions/clock_getres.html#>\n\nWINDOWS reference: !! This early version is\nposix-only and does not build on Windows. Support\nwill be added in the future. !!\n\nFor more information, see:\n<http://sert.homedns.org/hs/clock>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }