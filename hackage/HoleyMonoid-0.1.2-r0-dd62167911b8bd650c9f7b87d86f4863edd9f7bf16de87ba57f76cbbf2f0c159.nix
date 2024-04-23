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
      identifier = { name = "HoleyMonoid"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2009-2015 Martijn van Steenbergen";
      maintainer = "Martijn van Steenbergen <martijn@van.steenbergen.nl>";
      author = "Martijn van Steenbergen";
      homepage = "https://github.com/MedeaMelana/HoleyMonoid";
      url = "";
      synopsis = "Monoids with holes.";
      description = "The 'HoleyMonoid' allows building monoidal values of which certain components are to be filled in later. For example:\n\n> > let holey :: (Show a, Show b) => HoleyMonoid String r (a -> b -> r)\n>       holey = now \"x = \" . later show . now \", y = \" . later show\n>\n> > run holey 3 5\n> \"x = 3, y = 5\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }