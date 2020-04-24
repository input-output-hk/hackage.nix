{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "astrds"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Clara Loeh <darcs@wuisch.org>";
      author = "Clara Loeh <darcs@wuisch.org>,\nAndres Loeh <ksastrds@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "an incomplete 2d space game";
      description = "astrds is an intentionally incomplete 2d space game. The code\nis intended to be a playground for Haskell programmers who want\nto add their own features and extensions. The\nimplementation is based on SDL and OpenGL and includes\nsimple audio and joystick support.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "astrds" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }