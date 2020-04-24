{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heavy-log-shortcuts"; version = "1.0.1"; };
      license = "MIT";
      copyright = "2019 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/template#readme";
      url = "";
      synopsis = "Simle api for heavy logger";
      description = "An alternative shortcut api for heavy-logger, removes vars functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          (hsPkgs."heavy-logger" or ((hsPkgs.pkgs-errors).buildDepError "heavy-logger"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-format-heavy" or ((hsPkgs.pkgs-errors).buildDepError "text-format-heavy"))
          ];
        buildable = true;
        };
      };
    }