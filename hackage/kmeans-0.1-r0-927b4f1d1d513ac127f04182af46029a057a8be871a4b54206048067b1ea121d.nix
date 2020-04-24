{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "kmeans"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "max.rabkin@gmail.com";
      author = "Keegan Carruthers-Smith";
      homepage = "";
      url = "";
      synopsis = "Hidden Markov Model algorithms";
      description = "A simple library for k-means clustering";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }