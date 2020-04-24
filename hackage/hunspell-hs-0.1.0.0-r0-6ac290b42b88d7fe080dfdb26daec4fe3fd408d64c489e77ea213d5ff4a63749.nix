{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hunspell-hs"; version = "0.1.0.0"; };
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
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."hunspell" or ((hsPkgs.pkgs-errors).sysDepError "hunspell")) ++ (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6" or ((hsPkgs.pkgs-errors).sysDepError "hunspell-1.6"));
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
          libs = (pkgs.lib).optional (system.isLinux) (pkgs."hunspell" or ((hsPkgs.pkgs-errors).sysDepError "hunspell")) ++ (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6" or ((hsPkgs.pkgs-errors).sysDepError "hunspell-1.6"));
          buildable = true;
          };
        };
      benchmarks = {
        "hunspell-hs-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."hunspell-hs" or ((hsPkgs.pkgs-errors).buildDepError "hunspell-hs"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          libs = (pkgs.lib).optional (system.isLinux) (pkgs."hunspell" or ((hsPkgs.pkgs-errors).sysDepError "hunspell")) ++ (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6" or ((hsPkgs.pkgs-errors).sysDepError "hunspell-1.6"));
          buildable = true;
          };
        };
      };
    }