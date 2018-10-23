{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-middleware-route";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
      author = "Alexander Dorofeev <aka.spin@gmail.com>";
      homepage = "https://github.com/akaspin/wai-middleware-route";
      url = "";
      synopsis = "Wai dispatch middleware";
      description = "\\\"Just enough\\\" helpers for use @yesod-routes@ with @WAI@.";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-route" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.yesod-routes)
        ];
      };
    };
  }