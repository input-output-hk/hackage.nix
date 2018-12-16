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
      specVersion = "1.12";
      identifier = {
        name = "jmonkey";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/jmonkey#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/opyapeus/jmonkey#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.casing)
          (hsPkgs.free)
          (hsPkgs.jmacro)
        ];
      };
      exes = {
        "jmonkey-example-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.casing)
            (hsPkgs.clay)
            (hsPkgs.free)
            (hsPkgs.http-types)
            (hsPkgs.jmacro)
            (hsPkgs.jmonkey)
            (hsPkgs.lucid)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "jmonkey-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.casing)
            (hsPkgs.free)
            (hsPkgs.jmacro)
            (hsPkgs.jmonkey)
          ];
        };
      };
    };
  }