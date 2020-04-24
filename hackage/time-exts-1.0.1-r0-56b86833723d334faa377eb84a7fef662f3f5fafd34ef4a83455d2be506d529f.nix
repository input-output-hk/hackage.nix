{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16.0";
      identifier = { name = "time-exts"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
      author = "Enzo Haussecker <enzo@ucsd.edu>";
      homepage = "https://github.com/enzoh/time-exts";
      url = "";
      synopsis = "Efficient Timestamps";
      description = "Extensions to the Haskell time library, providing efficient Unix, UTC, and local timestamps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."timezone-olson" or ((hsPkgs.pkgs-errors).buildDepError "timezone-olson"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }