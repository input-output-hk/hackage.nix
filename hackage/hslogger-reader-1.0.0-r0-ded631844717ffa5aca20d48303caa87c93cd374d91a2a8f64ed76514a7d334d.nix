{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hslogger-reader"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ard.bates@gmail.com";
      author = "Alex Bates";
      homepage = "http://github.com/prophet-on-that/hslogger-reader";
      url = "";
      synopsis = "Parsing hslogger-produced logs.";
      description = "hslogger-reader provides a function to generate a parser for\n<http://hackage.haskell.org/package/hslogger hslogger>-produced logs\nfrom a hslogger format string (see \"System.Log.Formatter\"). The\naccompanying /profiling/ executable demonstrates parsing and computing\nwith a log file in constant memory.\nAlso bundled is the /filter-logs/ executable, a command-line tool to\nfilter a hslogger-syle log file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      exes = {
        "profiling" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger-reader" or ((hsPkgs.pkgs-errors).buildDepError "hslogger-reader"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            ];
          buildable = true;
          };
        "filter-logs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger-reader" or ((hsPkgs.pkgs-errors).buildDepError "hslogger-reader"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ];
          buildable = true;
          };
        };
      };
    }