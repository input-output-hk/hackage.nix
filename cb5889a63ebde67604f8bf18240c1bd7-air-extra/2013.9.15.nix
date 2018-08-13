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
      specVersion = "1.2";
      identifier = {
        name = "air-extra";
        version = "2013.9.15";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/air-extra";
      url = "";
      synopsis = "air-extra";
      description = "An alternative Haskell Prelude library, extra helpers";
      buildType = "Simple";
    };
    components = {
      "air-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.regexpr)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.old-locale)
          (hsPkgs.filepath)
          (hsPkgs.air)
          (hsPkgs.text)
        ];
      };
    };
  }