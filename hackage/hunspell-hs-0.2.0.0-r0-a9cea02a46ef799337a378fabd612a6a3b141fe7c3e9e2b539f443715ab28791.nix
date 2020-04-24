{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hunspell-hs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ashutosh Rishi Ranjan";
      maintainer = "ashutoshrishi92@gmail.com";
      author = "Ashutosh Rishi Ranjan";
      homepage = "https://github.com/ashutoshrishi/hunspell-hs#readme";
      url = "";
      synopsis = "Hunspell thread-safe FFI bindings for spell checking.";
      description = "Please see the README on GitHub at <https://github.com/ashutoshrishi/hunspell-hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6" or ((hsPkgs.pkgs-errors).sysDepError "hunspell-1.6"));
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."hunspell" or ((hsPkgs.pkgs-errors).pkgConfDepError "hunspell"));
        buildable = true;
        };
      tests = {
        "hunspell-hs-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hunspell-hs" or ((hsPkgs.pkgs-errors).buildDepError "hunspell-hs"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          libs = (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6" or ((hsPkgs.pkgs-errors).sysDepError "hunspell-1.6"));
          pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."hunspell" or ((hsPkgs.pkgs-errors).pkgConfDepError "hunspell"));
          buildable = true;
          };
        };
      benchmarks = {
        "hunspell-hs-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hunspell-hs" or ((hsPkgs.pkgs-errors).buildDepError "hunspell-hs"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          libs = (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6" or ((hsPkgs.pkgs-errors).sysDepError "hunspell-1.6"));
          pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."hunspell" or ((hsPkgs.pkgs-errors).pkgConfDepError "hunspell"));
          buildable = true;
          };
        };
      };
    }