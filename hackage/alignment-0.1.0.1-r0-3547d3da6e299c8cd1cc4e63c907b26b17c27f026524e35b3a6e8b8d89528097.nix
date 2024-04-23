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
      identifier = { name = "alignment"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2022 Tony Morris";
      maintainer = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://gitlab.com/system-f/alignment";
      url = "";
      synopsis = "Zip-alignment";
      description = "<<https://system-f.gitlab.io/logo/systemf-450x450.jpg>>\n\nZipping with alignment";
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