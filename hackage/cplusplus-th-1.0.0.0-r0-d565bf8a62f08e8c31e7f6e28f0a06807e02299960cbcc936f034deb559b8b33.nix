{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cplusplus-th"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, National ICT Australia Limited (NICTA)";
      maintainer = "maxwell.swadling@nicta.com.au";
      author = "Maxwell Swadling";
      homepage = "https://github.com/nicta/cplusplus-th";
      url = "";
      synopsis = "C++ Foreign Import Generation";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\ncplusplus-th allows you to foreign import C++ functions that are\ncompatible with the ccall calling convention. It also includes\nsome standard library abstractions.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [ (pkgs."c++" or ((hsPkgs.pkgs-errors).sysDepError "c++")) ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }