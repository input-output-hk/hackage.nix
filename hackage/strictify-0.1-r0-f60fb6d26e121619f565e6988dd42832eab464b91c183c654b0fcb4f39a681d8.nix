{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "strictify"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "Find a local optimum of strictness annotations.";
      description = "Find a local optimum of strictness annotations.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "strictify" = {
          depends = if flags.small-base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              ];
          buildable = true;
          };
        };
      };
    }