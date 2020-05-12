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
    flags = { example = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "friday-scale-dct"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Mason <axman6@gmail.com>";
      author = "Alex Mason <axman6@gmail.com>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/axman6/friday-scale-dct#readme";
      url = "";
      synopsis = "Scale Friday images with DCT";
      description = "Scale Friday Images with DCT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
          (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
          (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            (hsPkgs."friday-scale-dct" or (errorHandler.buildDepError "friday-scale-dct"))
            (hsPkgs."friday-juicypixels" or (errorHandler.buildDepError "friday-juicypixels"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if !flags.example then false else true;
          };
        };
      };
    }