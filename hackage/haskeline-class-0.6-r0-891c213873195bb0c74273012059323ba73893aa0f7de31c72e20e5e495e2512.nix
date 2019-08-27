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
      identifier = { name = "haskeline-class"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antoine Latter <aslatter@gmail.com>";
      author = "Antoine Latter";
      homepage = "http://community.haskell.org/~aslatter/code/haskeline-class";
      url = "";
      synopsis = "Class interface for working with Haskeline";
      description = "Haskeline provides all of its functionality within the scope of a monad transformer.\nThis module adds two pieces to this:\n\n* Introduced here is a type-class which defines the operations\nsupported by the Haskeline monad transformer - MonadHaskeline\n\n* Also is a newtype wrapper around Haskeline's InputT, called\nHaskelineT. Sadly, InputT defines ints own instance of the\nmtl MonadState, which is no good for folks wanting to use\nInputT in an existing monad transformer stack.\n\nHaskelineT also has an instance of MonadState, but it merely\nlifts the functions further in the transformer stack.\n\nLarge portions of the Haskeline functionality are re-exported\nhere for convinience.\n\nNote on build-dependencies: If you've succesfully built this with\nany packages other than the ones noted, please let me know!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }