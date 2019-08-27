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
      identifier = { name = "science-constants"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Anton Vorontsov <anton@enomsg.org>";
      author = "Anton Vorontsov <anton@enomsg.org>";
      homepage = "";
      url = "";
      synopsis = "Mathematical/physical/chemical constants";
      description = "This package provides constants and conversion factors commonly used in\nmathematics and physical sciences. The motivation is to make it easier\nto use ghci for quick scientific calculations [without the need to\nsearch for the constant values over the internet.] To make it even\nfriendlier, if multiple conventional names of a constant exist, they all\nare provided by this package. Wherever possible, TeX-style named\nconstants are also provided.\n\nThis package utilizes untyped values (i.e. untyped in terms of\n@unittyped@, @dimensional@, and similar libraries); and unless otherwise\nspecified, the constants are in SI units: mass in kilograms, length in\nmeters, etc.\n\nDue to floating-point calculation errors and to improve accuracy, the\npackage internally uses exact values even in cases where constants can\nbe mathematically derived one from another.\n\nMost of the constants values were taken from the Fundamental Constants\nData Center of the NIST Physical Measurement Laboratory (by Barry N.\nTaylor of the Data Center in close collaboration with Peter J. Mohr of\nthe Physical Measurement Laboratory's Atomic Physics Division.)\n<http://physics.nist.gov/cuu/>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }