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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GHood"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Hugo Pacheco\nCopyright (c) 2004, Alcino Cunha\nCopyright (c) 2000, Claus Reinke\nCopyright (c) 1992-2000, Andy Gill";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Claus Reinke";
      homepage = "http://www.cs.kent.ac.uk/people/staff/cr3/toolbox/haskell/GHood";
      url = "";
      synopsis = "A graphical viewer for Hood";
      description = "GHood is a graphical back-end for Hood, the front-end (the Haskell interface) is precisely that of Hood. If you have been using Hood already you won't have to change your programs to switch to GHood. If you haven't used Hood before, you can employ all the nice definitions in Hood's Observe library, just as explained in the Hood documentation (see the Hood homepage at <http://www.haskell.org/hood/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }