{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lorem"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Stefan Fischer";
      maintainer = "Stefan Fischer <sfischer13@ymail.com>";
      author = "Stefan Fischer";
      homepage = "https://github.com/sfischer13/haskell-lorem";
      url = "";
      synopsis = "Library for generating filler text";
      description = "This is a library for generating filler text (Lorem ipsum ...).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "lorem" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lorem" or ((hsPkgs.pkgs-errors).buildDepError "lorem"))
            ];
          buildable = true;
          };
        };
      };
    }