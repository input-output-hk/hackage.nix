{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-time = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "google-search"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "google-search@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/google-search";
      url = "";
      synopsis = "EDSL for Google and GMail search expressions";
      description = "Construct well-typed search expressions for use in various Google services.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (if flags.old-time
          then [
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]
          else [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]);
        buildable = true;
        };
      };
    }