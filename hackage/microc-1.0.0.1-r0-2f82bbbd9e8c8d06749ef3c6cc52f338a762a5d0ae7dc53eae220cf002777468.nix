{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "microc"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 hurou927";
      maintainer = "hurou927 <god.be.with.ye.fs@gmail.com>";
      author = "hurou927 <god.be.with.ye.fs@gmail.com>";
      homepage = "https://github.com/hurou927/microc-haskell#readme";
      url = "";
      synopsis = "microc compiler";
      description = "convert microc code to asm code";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "microc-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."microc" or ((hsPkgs.pkgs-errors).buildDepError "microc"))
            ];
          buildable = true;
          };
        };
      tests = {
        "microc-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."microc" or ((hsPkgs.pkgs-errors).buildDepError "microc"))
            ];
          buildable = true;
          };
        };
      };
    }