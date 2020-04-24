{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "disposable"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/disposable#readme";
      url = "";
      synopsis = "Allows storing different resource-releasing actions together.";
      description = "SomeDisposable aloows storing different resource releasing actions togther in a container.\nThis library is useful for queueing up GHCJS.Foreign.Callback together to be released\nafter a new rendering frame.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base-stub"));
        buildable = true;
        };
      };
    }