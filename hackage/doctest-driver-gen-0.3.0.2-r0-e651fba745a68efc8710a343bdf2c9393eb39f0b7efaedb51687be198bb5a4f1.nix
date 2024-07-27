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
      identifier = { name = "doctest-driver-gen"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) Hexirp 2017-2019";
      maintainer = "https://github.com/Hexirp/doctest-driver-gen/issues";
      author = "Hexirp";
      homepage = "https://github.com/Hexirp/doctest-driver-gen#readme";
      url = "";
      synopsis = "Generate driver file for doctest's cabal integration";
      description = "doctest-driver-gen is a doctest's driver file generator.\nIt lets you automatically generate driver file for\ndoctest's cabal integration.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "doctest-driver-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-driver-gen" or (errorHandler.buildDepError "doctest-driver-gen"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctest-driver-gen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest-driver-gen.components.exes.doctest-driver-gen or (pkgs.pkgsBuildBuild.doctest-driver-gen or (errorHandler.buildToolDepError "doctest-driver-gen:doctest-driver-gen")))
          ];
          buildable = true;
        };
      };
    };
  }