{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usepkgconfig = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libsystemd-daemon"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Cedric Staub <cs+hs@cssx.cc>";
      author = "Cedric Staub <cs+hs@cssx.cc>";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libsystemd-daemon.";
      description = "Haskell bindings for libsystemd-daemon.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        libs = [
          (pkgs."systemd-daemon" or ((hsPkgs.pkgs-errors).sysDepError "systemd-daemon"))
          ];
        pkgconfig = (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."libsystemd-daemon" or ((hsPkgs.pkgs-errors).pkgConfDepError "libsystemd-daemon"));
        buildable = true;
        };
      tests = {
        "run-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libsystemd-daemon" or ((hsPkgs.pkgs-errors).buildDepError "libsystemd-daemon"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }