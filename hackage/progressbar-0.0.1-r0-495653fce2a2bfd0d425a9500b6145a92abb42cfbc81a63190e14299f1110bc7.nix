{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "progressbar"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mad.one@gmail.com";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "Progressbar API";
      description = "This package implements a progress bar\napi built on the io-reactive package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."io-reactive" or ((hsPkgs.pkgs-errors).buildDepError "io-reactive"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = false;
          };
        };
      };
    }