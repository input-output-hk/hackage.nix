{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "RollingDirectory"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Falco Hirschenberger <hirsch@bigfoot.de>";
      maintainer = "Falco Hirschenberger <hirsch@bigfoot.de>";
      author = "Falco Hirschenberger <hirsch@bigfoot.de>";
      homepage = "";
      url = "";
      synopsis = "Limits the size of a directory's contents";
      description = "This is a daemon which monitors a directory and limits it's content's size by deleting old entries";
      buildType = "Simple";
      };
    components = {
      exes = {
        "RollingDirectory" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."monad-parallel" or ((hsPkgs.pkgs-errors).buildDepError "monad-parallel"))
            (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [
              (hsPkgs."hdaemonize-buildfix" or ((hsPkgs.pkgs-errors).buildDepError "hdaemonize-buildfix"))
              ]
            else [
              (hsPkgs."hdaemonize" or ((hsPkgs.pkgs-errors).buildDepError "hdaemonize"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "MainTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }