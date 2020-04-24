{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { safe-st = true; strict-modifyref = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ref"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Andy Sonnenburg";
      maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
      author = "Andy Sonnenburg";
      homepage = "http://github.com/sonyandy/ref";
      url = "";
      synopsis = "Mutable references";
      description = "This package defines the class 'Ref' of references mutable within appropriate\nmonads, as well as some instances of this class.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.safe-st) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))) ++ (pkgs.lib).optional (flags.strict-modifyref) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
        buildable = true;
        };
      };
    }