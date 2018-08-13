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
        name = "preview";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2017 factis research GmbH";
      maintainer = "kieran.meinhardt@gmail.com";
      author = "factis research GmbH";
      homepage = "https://github.com/factisresearch/opensource-mono#readme";
      url = "";
      synopsis = "The method of previewing data (instead of wholly show-ing it)";
      description = "The method of previewing data (instead of wholly show-ing it)";
      buildType = "Simple";
    };
    components = {
      "preview" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.strict-data)
          (hsPkgs.text)
          (hsPkgs.util-plus)
        ];
      };
    };
  }