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
        name = "servant-docs";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "generate API docs for your servant webservice";
      description = "Library for generating API docs from a servant API definition.\n\nRunnable example <https://github.com/haskell-servant/servant-docs/blob/master/example/greet.hs here>.";
      buildType = "Simple";
    };
    components = {
      "servant-docs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.string-conversions)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "greet-docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.servant-docs)
            (hsPkgs.text)
          ];
        };
      };
    };
  }