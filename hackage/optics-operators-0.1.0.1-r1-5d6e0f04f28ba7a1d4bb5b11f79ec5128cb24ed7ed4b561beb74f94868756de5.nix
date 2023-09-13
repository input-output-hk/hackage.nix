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
    flags = { build-readme = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "optics-operators"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "qwbarch <qwbarch@gmail.com>";
      author = "qwbarch";
      homepage = "https://github.com/qwbarch/optics-operators";
      url = "";
      synopsis = "A tiny package containing operators missing from the official package.";
      description = "A tiny package containing operators missing from the official package.\nBasic example using state operators:\n\n> newtype Person = Person { age :: Int } deriving (Show, Generic)\n>\n> main :: IO ()\n> main = print <=< flip execStateT (Person 0) $ do\n>   #age += 50\n>   #age -= 20\n>\n> -- Output: Person {age = 30}";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          ];
        buildable = true;
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            ];
          buildable = if !flags.build-readme then false else true;
          };
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }