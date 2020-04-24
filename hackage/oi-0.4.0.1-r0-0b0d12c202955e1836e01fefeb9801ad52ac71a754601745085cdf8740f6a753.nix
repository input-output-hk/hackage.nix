{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "oi"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nobsun@sampou.org";
      author = "Nobuo Yamashita";
      homepage = "";
      url = "";
      synopsis = "Library for purely functional lazy interactions with the outer world.";
      description = "This package implements a data structure and operations on it for writing interactive program with no imperative flavor of IO monads.\n\n[N.B.] At the moment, APIs maybe change.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "oi-cats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        "oi-cats2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        "oi-echoc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        "oi-echo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        "oi-morec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        "oi-recdircs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        "oi-talk" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."oi" or ((hsPkgs.pkgs-errors).buildDepError "oi"))
            ];
          buildable = true;
          };
        };
      };
    }