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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "polytree"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2025-2026 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://gitlab.com/tonymorris/polytree";
      url = "";
      synopsis = "A polymorphic rose-tree";
      description = "A rose-tree which has different data in the nodes and leaves\n\n<<https://logo.systemf.com.au/systemf-450x450.jpg>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ];
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