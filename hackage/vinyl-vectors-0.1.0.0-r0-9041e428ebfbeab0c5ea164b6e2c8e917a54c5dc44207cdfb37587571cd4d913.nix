{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-vectors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Author Here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/githubuser/vinyl-vectors#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "sorting" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."vinyl-vectors" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-vectors"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }