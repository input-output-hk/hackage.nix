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
      identifier = { name = "constrained-categories"; version = "0.2.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/constrained-categories";
      url = "";
      synopsis = "Constrained clones of the category-theory type classes, using ConstraintKinds.";
      description = "Haskell has, and makes great use of, powerful facilities from category\ntheory – basically various variants of functors.\n\nHowever, all those are just endofunctors in Hask, the category of\nall Haskell types with functions as morphisms. Which is sufficient\nfor container / control structures that you want to be able to handle\nany type of data, but otherwise it's a bit limiting, seeing as\nthere are (in maths, science etc.) many categories that cannot properly\nbe represented this way. Commonly used libraries such as\n<http://hackage.haskell.org/package/vector-space> thus make\nlittle notion of the fact that the objects they deal with actually\nform a category, instead defining just specialised versions of\nthe operations.\n\nThis library generalises functors etc. to a much wider class of\ncategories, by allowing for constraints on objects (so these can have\nextra properties required). At the same time, we try to keep as close\nas possible to the well-known Haskell type class hierarchies rather\nthan exactly adopting the mathematicians' notions.\n\nConsider the README file, the examples, and/or the documentation to\n\"Control.Category.Constrained\" for how to make use of this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }