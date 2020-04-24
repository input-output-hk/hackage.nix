{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "debug"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/debug";
      url = "";
      synopsis = "Simple trace-based debugger";
      description = "An easy to use debugger for viewing function calls and intermediate variables.\nTo use, annotate the function under test, run the code, and view the generated web page.\nFull usage instructions are at \"Debug\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."open-browser" or ((hsPkgs.pkgs-errors).buildDepError "open-browser"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."js-jquery" or ((hsPkgs.pkgs-errors).buildDepError "js-jquery"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          ];
        buildable = true;
        };
      tests = {
        "debug-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."debug" or ((hsPkgs.pkgs-errors).buildDepError "debug"))
            ];
          buildable = true;
          };
        };
      };
    }