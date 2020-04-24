{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "hhwloc"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2020 (c) Daniel Taskoff";
      maintainer = "daniel.taskoff@gmail.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/dtaskoff/hhwloc#readme";
      url = "";
      synopsis = "Bindings to https://www.open-mpi.org/projects/hwloc";
      description = "Please see the README on GitHub at <https://github.com/dtaskoff/hhwloc#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or ((hsPkgs.pkgs-errors).buildToolDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "hwloc-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hhwloc" or ((hsPkgs.pkgs-errors).buildDepError "hhwloc"))
            ];
          buildable = true;
          };
        };
      };
    }