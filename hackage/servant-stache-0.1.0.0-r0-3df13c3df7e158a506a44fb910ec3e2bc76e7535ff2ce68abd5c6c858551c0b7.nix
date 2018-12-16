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
        name = "servant-stache";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Tatsuya Hirose";
      maintainer = "tatsuya.hirose.0804@gmail.com";
      author = "Tatsuya Hirose";
      homepage = "https://github.com/lotz84/servant-stache#readme";
      url = "";
      synopsis = "Content-Types for rendering Mustache in servant";
      description = "Content-Types and template management for rendering Mustache templates in servant Web applications. This package is heavily inspired by <http://hackage.haskell.org/package/servant-ede servant-ede>. Documentation and examples available at \"Servant.Mustache\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.stache)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xss-sanitize)
        ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.http-media)
            (hsPkgs.servant-server)
            (hsPkgs.servant-stache)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }