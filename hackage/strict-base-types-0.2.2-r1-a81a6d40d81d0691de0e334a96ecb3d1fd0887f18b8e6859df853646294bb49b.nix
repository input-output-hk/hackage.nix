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
      identifier = { name = "strict-base-types"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 by Roman Leshchinskiy\n(c) 2013-2014 by Simon Meier";
      maintainer = "Simon Meier <iridcode@gmail.com>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>,\nSimon Meier <iridcode@gmail.com>";
      homepage = "https://github.com/meiersi/strict-base-types";
      url = "";
      synopsis = "Strict variants of the types provided in base.";
      description = "It is common knowledge that lazy datastructures can lead to space-leaks.\nThis problem is particularly prominent, when using lazy datastructures to\nstore the state of a long-running application in memory. The easiest\nsolution to this problem is to use fully strict types to store such state\nvalues. By \\\"fully strict types\\\" we mean types for whose values it holds\nthat, if they are in weak-head normal form, then they are also in normal\nform. Intuitively, this means that values of fully strict types cannot\ncontain unevaluated thunks.\n\nTo define a fully strict datatype, one typically uses the following recipe.\n\n1. Make all fields of every constructor strict; i.e., add a bang to\nall fields.\n\n2. Use only strict types for the fields of the constructors.\n\nThe second requirement is problematic as it rules out the use of\nthe standard Haskell 'Maybe', 'Either', and pair types. This library\nsolves this problem by providing strict variants of these types and their\ncorresponding standard support functions and type-class instances.\n\nNote that this library does currently not provide fully strict lists.\nThey can be added if they are really required. However, in many cases one\nprobably wants to use unboxed or strict boxed vectors from the 'vector'\nlibrary (<http://hackage.haskell.org/package/vector>) instead of strict\nlists.  Moreover, instead of @String@s one probably wants to use strict\n@Text@ values from the @text@ library\n(<http://hackage.haskell.org/package/text>).\n\nThis library comes with batteries included; i.e., missing instances\nfor type-classes from the @deepseq@, @binary@, @aeson@, @QuickCheck@, and\n@lens@ packages are included. Of particluar interest is the @Strict@\ntype-class provided by the lens library\n(<http://hackage.haskell.org/packages/archive/lens/3.9.0.2/doc/html/Control-Lens-Iso.html#t:Strict>).\nIt is used in the following example to simplify the modification of\nstrict fields.\n\n> (-# LANGUAGE TemplateHaskell #-)   -- replace with curly braces,\n> (-# LANGUAGE OverloadedStrings #-) -- the Haddock prologues are a P.I.T.A!\n>\n> import           Control.Lens ( (.=), Strict(strict), from, Iso', makeLenses)\n> import           Control.Monad.State.Strict (State)\n> import qualified Data.Map                   as M\n> import qualified Data.Maybe.Strict          as S\n> import qualified Data.Text                  as T\n>\n> -- | An example of a state record as it could be used in a (very minimal)\n> -- role-playing game.\n> data GameState = GameState\n>     ( _gsCooldown :: !(S.Maybe Int)\n>     , _gsHealth   :: !Int\n>     )  -- replace with curly braces, *grmbl*\n>\n> makeLenses ''GameState\n>\n> -- The isomorphism, which converts a strict field to its lazy variant\n> lazy :: Strict lazy strict => Iso' strict lazy\n> lazy = from strict\n>\n> type Game = State GameState\n>\n> cast :: T.Text -> Game ()\n> cast spell =\n>     gsCooldown.lazy .= M.lookup spell spellDuration\n>     -- ... implement remainder of spell-casting ...\n>   where\n>     spellDuration = M.fromList [(\"fireball\", 5)]\n\nSee\n<http://www.haskellforall.com/2013/05/program-imperatively-using-haskell.html>\nfor a gentle introduction to lenses and state manipulation.\n\nNote that this package uses the types provided by the 'strict' package\n(<http://hackage.haskell.org/package/strict>), but organizes them a bit\ndifferently. More precisely, the @strict-base-types@ package\n\n- only provides the fully strict variants of types from 'base',\n\n- is in-sync with the current base library (base-4.6),\n\n- provides the missing instances for (future) Haskell platform packages, and\n\n- conforms to the standard policy that strictness variants of an existing\ndatatype are identified by suffixing \\'Strict\\' or \\'Lazy\\' in the\nmodule hierarchy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      };
    }