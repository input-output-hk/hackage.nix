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
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "clock"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © Cetin Sert 2009-2012, Eugene Kirpichov 2010";
      maintainer = "Cetin Sert <cetin@corsis.eu>, Corsis Research";
      author = "Cetin Sert <cetin@corsis.eu>, Corsis Research; Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://corsis.github.com/clock/";
      url = "";
      synopsis = "High-resolution clock functions: monotonic, realtime, cputime.";
      description = "A package for convenient access to high-resolution clock and\ntimer functions of different operating systems.\n\nPOSIX layer was developed by Cetin Sert in 2009.\n\nWindows layer was contributed by Eugene Kirpichov in 2010.\n\nBoth layers share the same surface API.\n\n[Version Scheme]\nMajor-@/R/@-ewrite . New-@/F/@-unctionality . @/I/@-mprovementAndBugFixes . @/P/@-ackagingOnly\n\n* @PackagingOnly@ changes are made for quality assurance reasons.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }