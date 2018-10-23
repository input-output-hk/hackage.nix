{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sitemap";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/alpmestan/sitemap";
      url = "";
      synopsis = "Sitemap parser";
      description = "Sitemap parser. See the \"Web.Sitemap\" module for an example.";
      buildType = "Simple";
    };
    components = {
      "sitemap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.taggy)
          (hsPkgs.taggy-lens)
          (hsPkgs.text)
        ];
      };
    };
  }