{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hashable-time"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Karakulov <ankarakulov@gmail.com>";
      author = "Alexey Karakulov <ankarakulov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Hashable instances for Data.Time";
      description = "Hashable instances for types in Data.Time";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ] ++ (if flags.old-locale
          then [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]);
        buildable = true;
        };
      };
    }