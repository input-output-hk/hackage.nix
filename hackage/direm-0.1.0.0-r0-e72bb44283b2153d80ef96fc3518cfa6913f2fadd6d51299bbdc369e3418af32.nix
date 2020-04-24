{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "direm"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2019 Merlin Göttlinger";
      maintainer = "megoettlinger@gmail.com";
      author = "Merlin Göttlinger";
      homepage = "";
      url = "";
      synopsis = "Deletes a directory and retains its contents in the parent directory";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "direm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }