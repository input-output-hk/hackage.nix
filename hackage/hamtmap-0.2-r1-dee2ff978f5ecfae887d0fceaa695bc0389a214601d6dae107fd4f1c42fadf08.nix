{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hamtmap"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kevin Wu Won <exclipy@gmail.com>";
      author = "Kevin Wu Won";
      homepage = "https://github.com/exclipy/pdata";
      url = "";
      synopsis = "A purely functional and persistent hash map";
      description = "A port of Clojure's efficient persistent and hash\nmap data structure to Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }