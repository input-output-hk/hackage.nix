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
    flags = { examples = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "monomer-hagrid"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "garethdanielsmith@gmail.com";
      author = "";
      homepage = "https://app.radicle.xyz/nodes/ash.radicle.garden/rad:zEoEXiLdCpTKxNRq3FsK5WAJazAM";
      url = "";
      synopsis = "A datagrid widget for the Monomer library.";
      description = "A configurable Monomer widget that shows a scrollable grid of data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "example-basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."monomer-hagrid" or (errorHandler.buildDepError "monomer-hagrid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if flags.examples then true else false;
        };
        "example-big-grid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."monomer-hagrid" or (errorHandler.buildDepError "monomer-hagrid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if flags.examples then true else false;
        };
        "example-resizing-cells" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."monomer-hagrid" or (errorHandler.buildDepError "monomer-hagrid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."monomer-hagrid" or (errorHandler.buildDepError "monomer-hagrid"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }