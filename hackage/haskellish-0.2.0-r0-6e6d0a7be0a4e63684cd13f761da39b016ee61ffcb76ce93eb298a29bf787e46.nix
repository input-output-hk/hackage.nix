{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskellish"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019- David Ogborn";
      maintainer = "David Ogborn <ogbornd@mcmaster.ca>";
      author = "David Ogborn";
      homepage = "http://github.com/dktr0/Haskellish";
      url = "";
      synopsis = "For parsing Haskell-ish languages";
      description = "A library for parsing miniature and esoteric languages that are similar to Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }