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
      specVersion = "2.4";
      identifier = { name = "natural"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020-2026 System F";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/system-f/natural";
      url = "";
      synopsis = "Natural number";
      description = "Natural number\n\n<<https://logo.systemf.com.au/systemf-450x450.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0.1") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest.components.exes.doctest or (pkgs.pkgsBuildBuild.doctest or (errorHandler.buildToolDepError "doctest:doctest")))
          ];
          buildable = true;
        };
      };
    };
  }