{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "countable"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Ashley Yakeley <ashley@semantic.org>";
      maintainer = "Ashley Yakeley <ashley@semantic.org>";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "";
      url = "";
      synopsis = "Countable, Searchable, Finite, Empty classes";
      description = "* @class Countable@, for countable types\n\n* @class AtLeastOneCountable@, for countable types that have at least one value\n\n* @class InfiniteCountable@, for infinite countable types\n\n* @class Searchable@, for types that can be searched over. This turns out to include some infinite types, see <http://math.andrej.com/2007/09/28/seemingly-impossible-functional-programs/>.\n\n* @class Finite@, for finite types\n\n* @class Empty@, for empty types\n\n* @data Nothing@, an empty type\n\nSome orphan instances:\n\n* @(Searchable a,Eq b) => Eq (a -> b)@ / /\n\n* @(Finite t) => Foldable ((->) t)@ / /\n\n* @(Finite a) => Traversable ((->) a)@ / /\n\n* @(Show a,Finite a,Show b) => Show (a -> b)@ / /";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }