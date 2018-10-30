{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      testprogram = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "web-page";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <ertesx@gmx.de>";
      author = "Ertugrul Söylemez <ertesx@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "Monoidally construct web pages";
      description = "This package combines blaze-html, clay, jmacro and web-routes into a\nframework-agnostic library to generate web pages dynamically from\nindividual components.  It is inspired by Yesod's widgets, but is\nmore general, more powerful and can be used with other web\nframeworks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.containers)
          (hsPkgs.jmacro)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.wl-pprint-text)
        ];
      };
      exes = {
        "web-page-test" = {
          depends  = pkgs.lib.optionals (flags.testprogram) [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.clay)
            (hsPkgs.jmacro)
            (hsPkgs.text)
            (hsPkgs.web-page)
          ];
        };
      };
    };
  }