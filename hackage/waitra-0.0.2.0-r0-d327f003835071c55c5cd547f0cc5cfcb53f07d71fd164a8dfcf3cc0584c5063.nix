{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "waitra";
        version = "0.0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Futurice";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/futurice/waitra";
      url = "";
      synopsis = "A very simple Wai router";
      description = "Waitra is a very simple router.\nIt's useful for writing simple API web-services,\nwhen you don't want to use the whole Yesod stack.\n\n> echoRoute :: Route\n> echoRoute = routeGet (echoApp <\$ string \"/api/echo/\" <*> many anySym)\n>  where echoApp msg _req respond = respond \$ responseLBS status200 [] (fromString msg)\n>\n> app :: Application\n> app = waitraMiddleware [echoRoute] fallbackApp";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-types)
          (hsPkgs.regex-applicative)
          (hsPkgs.text)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-types)
            (hsPkgs.regex-applicative)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.waitra)
          ];
        };
      };
    };
  }