{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "config-value";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2015 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/config-value";
      url = "";
      synopsis = "Simple, layout-based value language similar to YAML or JSON";
      description = "This package implments a language similar to YAML or JSON but\nwith fewer special cases and fewer dependencies. It emphasizes\nlayout structure for sections and lists, and requires quotes\naround strings.";
      buildType = "Simple";
    };
    components = {
      "config-value" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.text)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }