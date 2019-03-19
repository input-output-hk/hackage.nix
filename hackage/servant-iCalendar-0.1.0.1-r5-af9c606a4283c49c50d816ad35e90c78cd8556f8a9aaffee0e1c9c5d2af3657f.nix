{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-iCalendar"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta <fgaz@fgaz.me>";
      homepage = "https://github.com/fgaz/servant-iCalendar#readme";
      url = "";
      synopsis = "Servant support for iCalendar";
      description = "Servant support for iCalendar";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.iCalendar)
          (hsPkgs.data-default)
          ];
        };
      };
    }