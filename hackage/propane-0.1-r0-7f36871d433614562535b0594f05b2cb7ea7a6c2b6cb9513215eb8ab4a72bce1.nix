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
      identifier = { name = "propane"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Functional synthesis of images and animations";
      description = "Propane is a system for synthesizing images and animations, in the spirit\nof Pan (<http://conal.net/Pan/>) and many other projects.  The core idea is\nthat an image is a function assigning a colour to each point in the plane.\nSimilarly, an animation assigns an image to each point in time.  Haskell's\ntools for functional and declarative programming can be used directly on\nimages and animations.\n\nSeveral examples are provided, in the @examples/@ directory.\n\nPropane uses the Repa array library.  This means that Propane automatically\nuses multiple CPU cores for rendering, provided the program is compiled and\nrun with threads enabled.  That said, the implementation has not yet been\noptimized for speed.\n\nPropane is a modest toy right now, but there are vague plans to make it\ndo fancy things.  Please contact the author with suggestions or code!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."repa-devil" or (buildDepError "repa-devil"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."spawn" or (buildDepError "spawn"))
          ];
        };
      };
    }