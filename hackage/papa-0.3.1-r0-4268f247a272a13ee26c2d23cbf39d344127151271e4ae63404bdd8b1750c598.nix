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
      identifier = { name = "papa"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/papa";
      url = "";
      synopsis = "Reasonable default import";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nReasonable default import";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."papa-base" or (errorHandler.buildDepError "papa-base"))
          (hsPkgs."papa-base-export" or (errorHandler.buildDepError "papa-base-export"))
          (hsPkgs."papa-base-implement" or (errorHandler.buildDepError "papa-base-implement"))
          (hsPkgs."papa-bifunctors" or (errorHandler.buildDepError "papa-bifunctors"))
          (hsPkgs."papa-bifunctors-export" or (errorHandler.buildDepError "papa-bifunctors-export"))
          (hsPkgs."papa-bifunctors-implement" or (errorHandler.buildDepError "papa-bifunctors-implement"))
          (hsPkgs."papa-lens" or (errorHandler.buildDepError "papa-lens"))
          (hsPkgs."papa-lens-export" or (errorHandler.buildDepError "papa-lens-export"))
          (hsPkgs."papa-lens-implement" or (errorHandler.buildDepError "papa-lens-implement"))
          (hsPkgs."papa-semigroupoids" or (errorHandler.buildDepError "papa-semigroupoids"))
          (hsPkgs."papa-semigroupoids-export" or (errorHandler.buildDepError "papa-semigroupoids-export"))
          (hsPkgs."papa-semigroupoids-implement" or (errorHandler.buildDepError "papa-semigroupoids-implement"))
          (hsPkgs."papa-x" or (errorHandler.buildDepError "papa-x"))
          (hsPkgs."papa-x-export" or (errorHandler.buildDepError "papa-x-export"))
          (hsPkgs."papa-x-implement" or (errorHandler.buildDepError "papa-x-implement"))
        ];
        buildable = true;
      };
    };
  }