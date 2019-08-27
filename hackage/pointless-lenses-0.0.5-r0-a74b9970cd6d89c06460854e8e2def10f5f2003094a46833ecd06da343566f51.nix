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
      specVersion = "1.2.3";
      identifier = { name = "pointless-lenses"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
      homepage = "http://haskell.di.uminho.pt/wiki/Pointless+Lenses";
      url = "";
      synopsis = "Pointless Lenses library";
      description = "Pointless Lenses is library of bidirectional lenses (<http://www.cis.upenn.edu/~bcpierce/papers/newlenses-popl.pdf>) defined in the point-free style of programming.\nGeneric bidirectional lenses can be defined over inductive types by relying in a set of lifted lens combinators from the standard point-free combinators.\nVirtually any recursive lens can be defined by combining the lenses for the recursion patterns of catamorphisms and anamorphism.\nThe library also provides QuickCheck procedures to test the well-behavedness of user-defined lens transformations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pointless-haskell" or (buildDepError "pointless-haskell"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        };
      };
    }