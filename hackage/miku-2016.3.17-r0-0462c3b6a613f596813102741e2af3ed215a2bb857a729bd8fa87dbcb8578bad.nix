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
      specVersion = "1.6";
      identifier = {
        name = "miku";
        version = "2016.3.17";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/miku";
      url = "";
      synopsis = "A minimum web dev DSL";
      description = "A simple library for fast web prototyping in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
    };
  }