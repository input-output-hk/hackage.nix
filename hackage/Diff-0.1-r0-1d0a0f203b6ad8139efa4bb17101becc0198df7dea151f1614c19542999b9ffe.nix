{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Diff"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "O(ND) diff algorithm in haskell.";
      description = "Basic implementation of the standard diff algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
        buildable = true;
        };
      };
    }