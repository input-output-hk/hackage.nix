{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hpaste"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "http://hpaste.org";
      url = "";
      synopsis = "An online pastebin, written in Haskell.";
      description = "Haskell pastebin, using HAppS";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hpaste" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HAppS" or ((hsPkgs.pkgs-errors).buildDepError "HAppS"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }