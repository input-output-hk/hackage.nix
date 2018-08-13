{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      testprogram = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "web-page";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <ertesx@gmx.de>";
      author = "Ertugrul Söylemez <ertesx@gmx.de>";
      homepage = "http://hub.darcs.net/ertes/web-page";
      url = "";
      synopsis = "Monoidally construct web pages";
      description = "This package combines blaze-html, clay and jmacro into a\nframework-agnostic library to generate web pages dynamically from\nindividual components.  It is inspired by Yesod's widgets, but is\nmore general, more powerful and can be used with other web\nframeworks.\n\nSee the @README.md@ file for a full list of features and a quick\nintroduction.  More detailed documentation can be found in the\nindividual modules.";
      buildType = "Simple";
    };
    components = {
      "web-page" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.containers)
          (hsPkgs.jmacro)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.Stream)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.wl-pprint-text)
        ];
      };
      exes = {
        "web-page-test" = {
          depends  = pkgs.lib.optionals (_flags.testprogram) [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.clay)
            (hsPkgs.http-types)
            (hsPkgs.jmacro)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.web-page)
          ];
        };
      };
    };
  }