{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsfcsh"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/hsfcsh";
      url = "";
      synopsis = "Incremental builder for flash";
      description = "It is a wrapper around fcsh. It allows to build flash/flex project incrementally. Can be used from Makefile";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsfcsh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."hdaemonize" or ((hsPkgs.pkgs-errors).buildDepError "hdaemonize"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        "hsfcsh_do" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."hdaemonize" or ((hsPkgs.pkgs-errors).buildDepError "hdaemonize"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }