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
      identifier = { name = "pointless-fun"; version = "1.1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009–2021 wren gayle romano";
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