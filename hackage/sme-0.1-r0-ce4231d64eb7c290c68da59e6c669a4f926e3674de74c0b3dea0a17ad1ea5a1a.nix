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
      identifier = { name = "sme"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Mauro Jaskelioff, Alejandro Russo";
      maintainer = "Mauro Jaskelioff < mauro @ fceia dot unr dot edu dot ar>, Alejandro Russo < russo at chalmers dot se >";
      author = "Mauro Jaskelioff, Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "A library for Secure Multi-Execution in Haskell";
      description = "The library is based on the paper\n/Secure Multi-Execution in Haskell/ by Mauro Jaskelioff, and Alejandro Russo. In Proceedings of\nAndrei Ershov International Conference on Perspectives of System Informatics (PSI'11), Akademgorodok,\nNovosibirsk, Russia, June 27-July 1, 2011. LNCS, Springer-Verlag.\n<http://www.cse.chalmers.se/~russo/publications_files/sme.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }