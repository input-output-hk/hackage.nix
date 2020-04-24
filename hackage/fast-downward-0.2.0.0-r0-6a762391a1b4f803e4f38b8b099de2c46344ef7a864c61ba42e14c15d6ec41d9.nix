{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "fast-downward"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ollie Charles <ollie@ocharles.org.uk>";
      author = "";
      homepage = "https://github.com/circuithub/fast-downward";
      url = "";
      synopsis = "Solve classical planning problems (STRIPS/SAS+) using Haskell & Fast Downward.";
      description = "@fast-downward@ is a library for modelling classical planning problems and\nsolving them using the Fast Downward engine. For general usage, see\n\"FastDownward\", and for an example see \"FastDownward.Examples.Gripper\".\n\nNote that usage of this library requires the @downward@ executable - see\n<http://www.fast-downward.org/ObtainingAndRunningFastDownward Obtaining and Running Fast Downward>\nfor more instructions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }