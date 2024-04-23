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
      identifier = { name = "lua-arbitrary"; version = "1.0.0"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak;\n© 2012–2016 Ömer Sinan Ağacan;\n© 2017-2021 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Albert Krewinkel, Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Arbitrary instances for Lua types.";
      description = "Provides instances for QuickCheck's \\\"Arbitrary\\\"\ntypeclass.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
    };
  }