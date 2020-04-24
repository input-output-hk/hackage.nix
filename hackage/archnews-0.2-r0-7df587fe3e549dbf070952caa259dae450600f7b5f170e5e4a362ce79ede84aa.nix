{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "archnews"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://archhaskell.wordpress.com/";
      url = "";
      synopsis = "Convert Arch Linux package updates in RSS to pretty markdown";
      description = "Convert Arch Linux package updates in RSS to pretty markdown";
      buildType = "Simple";
      };
    components = {
      exes = {
        "archnews" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."download-curl" or ((hsPkgs.pkgs-errors).buildDepError "download-curl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            ];
          buildable = true;
          };
        };
      };
    }