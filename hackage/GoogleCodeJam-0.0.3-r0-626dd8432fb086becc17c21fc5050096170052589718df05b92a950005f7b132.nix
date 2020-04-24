{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "GoogleCodeJam"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/GoogleCodeJam";
      url = "";
      synopsis = "A monad for flexible parsing of Google Code Jam input files with automatic parallelization.";
      description = "For more (including usage examples and solutions to GCJ problems) see <https://github.com/johannesgerer/GoogleCodeJam Readme> on Github.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }