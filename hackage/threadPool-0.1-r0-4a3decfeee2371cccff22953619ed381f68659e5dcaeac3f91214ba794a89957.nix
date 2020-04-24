{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "threadPool"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Brian Jaress";
      homepage = "http://brian-jaress.livejournal.com/";
      url = "";
      synopsis = "Runs other programs in the manner of a thread pool";
      description = "Takes a single, optional argument which is the number\nof threads (the default is three).  Give it the commands to run, one\nper line, through standard input.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "threadpool" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }