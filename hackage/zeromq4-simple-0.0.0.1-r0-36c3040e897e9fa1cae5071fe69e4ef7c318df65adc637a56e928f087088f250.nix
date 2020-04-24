{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "zeromq4-simple"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018, 2019 (c) Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/zeromq4-simple#readme";
      url = "";
      synopsis = "More constrained extensions to zeromq4-haskell";
      description = "Please see the README on GitHub at <https://github.com/athanclark/zeromq4-simple#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."zeromq4-haskell" or ((hsPkgs.pkgs-errors).buildDepError "zeromq4-haskell"))
          ];
        buildable = true;
        };
      };
    }