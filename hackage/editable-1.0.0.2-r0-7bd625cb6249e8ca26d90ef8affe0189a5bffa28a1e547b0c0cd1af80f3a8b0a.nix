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
      specVersion = "1.10";
      identifier = { name = "editable"; version = "1.0.0.2"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2014 Maxwell Swadling";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "https://github.com/maxpow4h/editable";
      url = "";
      synopsis = "Interactive editors for Generics";
      description = "Editable can derive editors for data types.\n\nAdd @deriving Generic@ and @instance Editable Foo@ to your\ndata type, and you can launch an editor for it with\n@editor :: Editable a => a -> IO a@.\n\n> module Demo where\n>\n> import Data.Editable\n> import GHC.Generics\n>\n> data Foo = Bar String Int | Baz Int\n>   deriving (Show, Generic)\n>\n> instance Editable Foo\n\n<<https://cloud.githubusercontent.com/assets/136101/3006789/f235419e-de4d-11e3-8a4e-796d5b9ae49c.png>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
        buildable = true;
        };
      };
    }