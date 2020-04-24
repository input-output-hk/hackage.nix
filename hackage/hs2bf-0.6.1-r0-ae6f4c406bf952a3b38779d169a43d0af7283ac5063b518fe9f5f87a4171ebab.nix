{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hs2bf"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xanxys@gmail.com";
      author = "Daiki Handa";
      homepage = "";
      url = "";
      synopsis = "Haskell to Brainfu*k compiler";
      description = "Proof of concept implementation of Haskell to Brainfu*k compiler.\nYou can find examples of compilable codes at <http://www.xanxys.net/public/hs2bf-demo/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hs2bf" = {
          depends = [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
            ];
          buildable = true;
          };
        };
      };
    }