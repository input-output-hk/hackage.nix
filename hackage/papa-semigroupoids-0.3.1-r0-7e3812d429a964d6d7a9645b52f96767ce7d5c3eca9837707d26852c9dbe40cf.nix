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
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "papa-semigroupoids"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/papa";
      url = "";
      synopsis = "Prelude with only useful functions";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nPrelude with only useful functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."papa-semigroupoids-export" or (errorHandler.buildDepError "papa-semigroupoids-export"))
          (hsPkgs."papa-semigroupoids-implement" or (errorHandler.buildDepError "papa-semigroupoids-implement"))
        ];
        buildable = true;
      };
    };
  }