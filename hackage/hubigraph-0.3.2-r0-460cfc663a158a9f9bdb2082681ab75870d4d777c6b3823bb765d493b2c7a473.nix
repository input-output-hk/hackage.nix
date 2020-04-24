{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hubigraph"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matei Tene <matei.tene@cti.pub.ro>";
      author = "Kohei Ozaki <eowner@gmail.com>";
      homepage = "http://ooxo.org/hubigraph/";
      url = "";
      synopsis = "A haskell wrap for Ubigraph";
      description = "Hubigraph is a Haskell wrapper for Ubigraph, which is a tool for visualizing dynamic graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haxr" or ((hsPkgs.pkgs-errors).buildDepError "haxr"))
          ];
        buildable = true;
        };
      };
    }