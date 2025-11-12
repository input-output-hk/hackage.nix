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
      identifier = { name = "alignment"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2022-2025 Tony Morris";
      maintainer = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://gitlab.com/system-f/code/alignment";
      url = "";
      synopsis = "Zip-alignment";
      description = "Zipping with alignment\n\n<<https://logo.systemf.com.au/systemf-450x450.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
        ];
        buildable = true;
      };
    };
  }