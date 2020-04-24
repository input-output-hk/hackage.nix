{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-iCalendar"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Francesco Gazzetta <francygazz@gmail.com>";
      author = "Francesco Gazzetta <francygazz@gmail.com>";
      homepage = "https://github.com/fgaz/servant-iCalendar#readme";
      url = "";
      synopsis = "Servant support for iCalendar";
      description = "Servant support for iCalendar";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."iCalendar" or ((hsPkgs.pkgs-errors).buildDepError "iCalendar"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }