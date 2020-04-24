{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "event-monad"; version = "0.0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/event-monad";
      url = "";
      synopsis = "Event-graph simulation monad transformer";
      description = "An interface for and simple implementation of an\nevent-graph simulation system as a monad transformer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."event-handlers" or ((hsPkgs.pkgs-errors).buildDepError "event-handlers"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."priority-queue" or ((hsPkgs.pkgs-errors).buildDepError "priority-queue"))
          (hsPkgs."stateref" or ((hsPkgs.pkgs-errors).buildDepError "stateref"))
          (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      };
    }