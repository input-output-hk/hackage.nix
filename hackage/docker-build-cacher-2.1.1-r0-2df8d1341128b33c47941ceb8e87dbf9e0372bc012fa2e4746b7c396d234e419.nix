{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "docker-build-cacher"; version = "2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Seatgeek, Copyright (c) 2017";
      maintainer = "lorenzo@seatgeek.com";
      author = "José Lorenzo Rodríguez";
      homepage = "https://github.com/seatgeek/docker-build-cacher#readme";
      url = "";
      synopsis = "Builds a docker image and caches all of its intermediate stages";
      description = "A CLI tool to speed up multi-stage docker file builds by caching intermediate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."language-docker" or ((hsPkgs.pkgs-errors).buildDepError "language-docker"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
          ];
        buildable = true;
        };
      exes = {
        "docker-build-cacher" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."docker-build-cacher" or ((hsPkgs.pkgs-errors).buildDepError "docker-build-cacher"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."language-docker" or ((hsPkgs.pkgs-errors).buildDepError "language-docker"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      };
    }