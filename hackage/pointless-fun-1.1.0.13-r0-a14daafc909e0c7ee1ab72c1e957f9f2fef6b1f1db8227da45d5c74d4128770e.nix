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
      identifier = { name = "pointless-fun"; version = "1.1.0.13"; };
      license = "BSD-3-Clause";
      copyright = "2009–2025 wren romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano, Matt Hellige";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "Some common point-free combinators.";
      description = "Some common point-free combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }