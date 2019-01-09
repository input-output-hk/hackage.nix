{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "waitra"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2015 Futurice";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/futurice/waitra";
      url = "";
      synopsis = "A very simple Wai router";
      description = "Waitra is a very simple router.\nIt's useful for writing simple API web-services,\nwhen you don't want to use the whole Yesod stack.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.regex-applicative)
          (hsPkgs.text)
          (hsPkgs.wai)
          ];
        };
      };
    }