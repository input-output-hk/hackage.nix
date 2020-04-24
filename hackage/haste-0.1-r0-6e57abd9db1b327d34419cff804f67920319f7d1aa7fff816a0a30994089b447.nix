{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "haste"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djsiegel@gmail.com";
      author = "David Siegel";
      homepage = "";
      url = "";
      synopsis = "A universal pastebin tool, written in Haskell.";
      description = "A universal pastebin tool, written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haste" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            ];
          buildable = true;
          };
        };
      };
    }