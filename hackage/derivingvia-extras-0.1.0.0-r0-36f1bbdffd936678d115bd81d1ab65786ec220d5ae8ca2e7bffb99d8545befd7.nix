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
      specVersion = "2.0";
      identifier = { name = "derivingvia-extras"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Baldur Blöndal";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "DerivingVia extras - Miscellaneous /via/ types.";
      description = "Includes various functionality to use with 'DerivingVia'.\n\n> -- >> alice = User \"Alice\" 50 0xDEADBEAF\n> -- >> bob   = User \"Bob\"   20 0xDEADBEAF\n> -- >>\n> -- >> alice == bob\n> -- True\n> -- >> hash alice == hash bob\n> -- True\n> data User = User\n>   { name   :: String\n>   , age    :: Int\n>   , userID :: Integer\n>   }\n>   deriving (Eq, Ord, Hashable)\n>   via User `On` \"userID\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }