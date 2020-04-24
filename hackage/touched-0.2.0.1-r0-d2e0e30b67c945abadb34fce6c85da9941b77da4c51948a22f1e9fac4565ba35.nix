{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "touched"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 to Alex Crough";
      maintainer = "alex@crough.org";
      author = "Alex Crough";
      homepage = "";
      url = "";
      synopsis = "Library (and cli) to execute a procedure on file change.";
      description = "A small, IO-heavy library that monitors files for changes and runs either a system shell command or a Haskell `IO ()` action.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "touched" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."touched" or ((hsPkgs.pkgs-errors).buildDepError "touched"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }