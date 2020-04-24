{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { monadrandom = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "random-effin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Hiromi ISHII";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "A simple random generator library for effin";
      description = "A simple random generator library for effin";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."effin" or ((hsPkgs.pkgs-errors).buildDepError "effin"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ] ++ (pkgs.lib).optional (flags.monadrandom) (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"));
        buildable = true;
        };
      };
    }