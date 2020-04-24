{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "attempt"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/snoyberg/attempt/tree/master";
      url = "";
      synopsis = "Error handling using extensible exceptions outside the IO monad.";
      description = "Defines a data type, Attempt, which has a Success and Failure constructor. Failure contains an extensible exception.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."control-monad-failure" or ((hsPkgs.pkgs-errors).buildDepError "control-monad-failure"))
          (hsPkgs."monadloc" or ((hsPkgs.pkgs-errors).buildDepError "monadloc"))
          ];
        buildable = true;
        };
      };
    }