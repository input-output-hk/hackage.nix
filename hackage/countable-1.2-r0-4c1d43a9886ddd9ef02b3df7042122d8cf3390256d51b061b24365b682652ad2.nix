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
      specVersion = "2.2";
      identifier = { name = "countable"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2022 Ashley Yakeley";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/AshleyYakeley/countable";
      url = "";
      synopsis = "Countable, Searchable, Finite, Empty classes";
      description = "* @class Countable@, for countable types\n\n* @class AtLeastOneCountable@, for countable types that have at least one value\n\n* @class InfiniteCountable@, for infinite countable types\n\n* @class Searchable@, for types that can be searched over. This turns out to include some infinite types, see <http://math.andrej.com/2007/09/28/seemingly-impossible-functional-programs/>.\n\n* @class Finite@, for finite types\n\n* @class Singular@, for singular (n = 1) types\n\n* @class Empty@, for empty (n = 0) types\n\nSome orphan instances (in their own modules):\n\n* @(Searchable a,Eq b) => Eq (a -> b)@ / /\n\n* @Finite t => Foldable ((->) t)@ / /\n\n* @Finite a => Traversable ((->) a)@ / /\n\n* @(Show a,Finite a,Show b) => Show (a -> b)@ / /";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."countable" or (errorHandler.buildDepError "countable"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }