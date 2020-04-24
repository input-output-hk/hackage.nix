{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Noise"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Hugo Gomes";
      maintainer = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell coherent noise generator based on libnoise";
      description = "\nA Haskell coherent noise generator roughly based on libnoise.\nFor more information on libnoise, please check: <http://libnoise.sourceforge.net>\nThe noise modules were extensively profiled and benchmarked,\nthe slower pure functions were rewritten in C.\nThe main objective of this packer is to provide a simple interface\nto compose noise modules.\n\n>\n> perlinWithScale = perlin `isSourceOf` scalebias\n>\n\nThis is a 3D noise package, to get a value you need to specify a\ntriple:\n\n> getValue myComposition (-0.1, -0.5, 0.76)\n\nFor more information please read the documentation of each module\nbellow.\n\nSpecial thanks to Csaba Hruska for the patches and testing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }