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
        name = "servant-zeppelin-swagger";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Martin Allen, Ben Weitzman";
      maintainer = "martin[dot]allen26[at]gmail.com";
      author = "Martin Allen, Ben Weitzman";
      homepage = "https://github.com/martyall/servant-zeppelin#readme";
      url = "";
      synopsis = "Swagger instances for servant-zeppelin combinators.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.singletons)
          (hsPkgs.servant)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-zeppelin)
          (hsPkgs.swagger2)
          (hsPkgs.text)
        ];
      };
      tests = {
        "servant-zeppelin-swagger-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.insert-ordered-containers)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-zeppelin)
            (hsPkgs.servant-zeppelin-swagger)
            (hsPkgs.swagger2)
          ];
        };
      };
    };
  }