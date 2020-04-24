{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hackage2hwn"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hackage2hwn";
      url = "";
      synopsis = "Convert Hackage RSS feeds to wiki format for publishing on Haskell.org";
      description = "Convert Hackage RSS feeds to wiki format for publishing on Haskell.org";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackage2hwn" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            ];
          buildable = true;
          };
        };
      };
    }