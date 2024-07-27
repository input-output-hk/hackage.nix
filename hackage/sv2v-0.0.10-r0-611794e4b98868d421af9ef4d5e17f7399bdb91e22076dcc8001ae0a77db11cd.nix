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
      identifier = { name = "sv2v"; version = "0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Zachary Snow <zach@zachjs.com>";
      author = "Zachary Snow <zach@zachjs.com>, Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "https://github.com/zachjs/sv2v";
      url = "";
      synopsis = "SystemVerilog to Verilog conversion";
      description = "A tool for coverting SystemVerilog to Verilog. Originally forked from the\nVerilog parser found at https://github.com/tomahawkins/verilog";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sv2v" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
          buildable = true;
        };
      };
    };
  }