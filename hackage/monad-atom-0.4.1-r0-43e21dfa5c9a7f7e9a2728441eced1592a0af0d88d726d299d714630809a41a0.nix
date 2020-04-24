{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "monad-atom"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gchrupala@lsv.uni-saarland.de";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/lingo";
      url = "";
      synopsis = "Monadically convert object to unique integers and back.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }