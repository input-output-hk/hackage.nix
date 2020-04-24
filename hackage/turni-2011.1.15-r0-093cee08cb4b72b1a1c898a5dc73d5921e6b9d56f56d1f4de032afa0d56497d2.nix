{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "turni"; version = "2011.1.15"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Paolo Veronelli";
      maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com>";
      author = "";
      homepage = "http://wiki.github.com/paolino/turni";
      url = "";
      synopsis = "shifts scheduling tool";
      description = "..";
      buildType = "Simple";
      };
    components = {
      exes = {
        "settimana" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }