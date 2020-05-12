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
      specVersion = "1.12";
      identifier = { name = "th-lift"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "© 2006 Ian Lynagh, © 2010-2018 Mathieu Boespflug";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Ian Lynagh";
      homepage = "http://github.com/mboes/th-lift";
      url = "";
      synopsis = "Derive Template Haskell's Lift class for datatypes.";
      description = "Derive Template Haskell's Lift class for datatypes using @TemplateHaskell@\n\n* <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for @template-haskell@ syntax types\n\n* <http://hackage.haskell.org/package/th-lift-instances th-lift-instances> package provides @Lift@ (compat) instances for types in @base@, @text@, @bytestring@, @vector@ etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }