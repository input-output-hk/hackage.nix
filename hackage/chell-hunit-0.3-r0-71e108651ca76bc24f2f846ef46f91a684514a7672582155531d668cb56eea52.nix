{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "chell-hunit"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/typeclasses/chell";
      url = "";
      synopsis = "HUnit support for the Chell testing library";
      description = "HUnit support for the <https://hackage.haskell.org/package/chell Chell> testing library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chell" or ((hsPkgs.pkgs-errors).buildDepError "chell"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }