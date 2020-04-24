{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "io-region"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2015";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/io-region/wiki";
      url = "";
      synopsis = "Exception safe resource management with dynamic regions";
      description = "Region owns resources and automatically frees them on exit.\nIt is a plain old ADT, so it is possible to pass it to functions,\nput into mutable references, store in regular data types.\n\nResources can be freed earler or transfered to other regions.\n\nRegion itself can be used as any other resource. E.g. one region\ncan own other one.\n\nThe library doesn't pretend to solve double throw issue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."io-region" or ((hsPkgs.pkgs-errors).buildDepError "io-region"))
            ];
          buildable = true;
          };
        };
      };
    }