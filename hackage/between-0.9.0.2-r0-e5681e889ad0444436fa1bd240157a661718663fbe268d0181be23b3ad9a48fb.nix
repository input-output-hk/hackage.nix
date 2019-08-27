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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "between"; version = "0.9.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, 2014 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/between";
      url = "";
      synopsis = "Function combinator \"between\" and derived combinators";
      description = "It turns out that this combinator\n\n> f ~@~ g = (f .) . (. g)\n\nis a powerful thing. It was abstracted from following (commonly used)\npattern @f . h . g@ where @f@ and @g@ are fixed.\n\nThis library not only define @~\\@~@ combinator, but also some derived\ncombinators that can help us to easily define a lot of things including\nlenses. See <http://hackage.haskell.org/package/lens lens package> for\ndetais on what lenses are.\n\nFunction @Data.Function.on@ can be implemented using @~\\@~@ as:\n\n> on :: (b -> b -> c) -> (a -> b) -> a -> a -> c\n> on f g = (id ~@~ g ~@~ g) f\n\nIf function @on3@ existed in /base/ then it could be defined as:\n\n> on3 :: (b -> b -> b -> d) -> (a -> b) -> a -> a -> a -> d\n> on3 f g = (id ~@~ g ~@~ g ~@~ g) f\n\nOther usage examples and documentation can be found in\n\"Data.Function.Between\".";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }