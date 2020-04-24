{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Graph500"; version = "0.4.0"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2013 Parallel Scientific Labs, LLC";
      maintainer = "alexander.vershilov@parsci.com";
      author = "serguey.zefirov@parsci.com";
      homepage = "";
      url = "";
      synopsis = "Graph500 benchmark-related definitions and data set generator.";
      description = "Graph generator library and standalone graph generator. The\ngenerator allows you to generate your data once and then use it\nfor benchmarking and debugging. Graph generation algorithm follows\nGraph500 specification <http://www.graph500.org/specifications#sec-3_3>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "graph500gen" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Graph500" or ((hsPkgs.pkgs-errors).buildDepError "Graph500"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }