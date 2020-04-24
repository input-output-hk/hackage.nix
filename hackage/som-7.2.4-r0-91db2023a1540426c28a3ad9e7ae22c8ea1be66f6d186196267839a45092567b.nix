{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "som"; version = "7.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de Buitléir 2010-2014";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/som";
      url = "";
      synopsis = "Self-Organising Maps.";
      description = "A Kohonen Self-organising Map (SOM) maps input patterns\nonto a regular grid (usually two-dimensional) where each\nnode in the grid is a model of the input data, and does\nso using a method which ensures that any topological\nrelationships within the input data are also represented\nin the grid. This implementation supports the use of\nnon-numeric patterns.\n\nIn layman's terms, a SOM can be useful when you you want\nto discover the underlying structure of some data.\n\nThe userguide is available at\n<https://github.com/mhwombat/som/wiki>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."grid" or ((hsPkgs.pkgs-errors).buildDepError "grid"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "som-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."som" or ((hsPkgs.pkgs-errors).buildDepError "som"))
            (hsPkgs."grid" or ((hsPkgs.pkgs-errors).buildDepError "grid"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }