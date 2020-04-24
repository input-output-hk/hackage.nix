{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { constraints = false; debug = false; examples = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "constraints-deriving"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Artem Chirkin";
      maintainer = "achirkin@users.noreply.github.com";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/constraints-deriving#readme";
      url = "";
      synopsis = "Manipulating constraints and deriving class instances programmatically.";
      description = "The library provides a plugin to derive class instances programmatically. Please see the README on GitHub at <https://github.com/achirkin/constraints-deriving#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ] ++ (pkgs.lib).optional (flags.constraints) (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"));
        buildable = true;
        };
      exes = {
        "deriving-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."constraints-deriving" or ((hsPkgs.pkgs-errors).buildDepError "constraints-deriving"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "functional-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."constraints-deriving" or ((hsPkgs.pkgs-errors).buildDepError "constraints-deriving"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
            ];
          buildable = true;
          };
        };
      };
    }