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
      specVersion = "3.0";
      identifier = { name = "generic-labels"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Derbyshire";
      author = "Sam Derbyshire";
      homepage = "https://github.com/sheaf/generic-labels";
      url = "";
      synopsis = "Generically extract and replace collections of record fields";
      description = "Handle various conversion operations between record types,\nsuch as projecting out a collection of fields from a record,\nor plugging in values for a subset of the fields of a larger record.\n\nWorks both with built-in Haskell records, as well as explicitly labelled types\n@ ( #label := value ) :: ( \"label\" := Type ) @.\n\nProject out a smaller record using @project@:\n\n@\n  data IBXD x = IBXD { i :: Int, b :: Bool, x :: x, d :: Double }\n    deriving stock Generic\n  data XI x = XI { x :: c, i :: Int }\n    deriving stock Generic\n@\n\nPlug in a subset of fields using @inject@:\n\n@\n  xi_into_ibxd :: XI x -> IBXD x -> IBXD x\n  xi_into_ibxd = inject\n@\n\nCreate a record out of two collections of arguments using @adapt@:\n\n@\n  xi_plus_bd_makes_ibxd :: XI x -> ( \"b\" := Bool, \"d\" := Double ) -> IBXD x\n  xi_plus_bd_makes_ibxd = adapt\n@\n\nSee also the library's [readme](https://github.com/sheaf/generic-labels/blob/master/readme.md).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-lens-core" or (errorHandler.buildDepError "generic-lens-core"))
        ];
        buildable = true;
      };
      tests = {
        "generic-labels-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-labels" or (errorHandler.buildDepError "generic-labels"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = true;
        };
      };
    };
  }