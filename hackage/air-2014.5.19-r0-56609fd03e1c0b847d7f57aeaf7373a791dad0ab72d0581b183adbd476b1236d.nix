{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "air";
        version = "2014.5.19";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/air";
      url = "";
      synopsis = "air";
      description = "An alternative Haskell Prelude library.";
      buildType = "Simple";
    };
    components = {
      "air" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.text)
        ];
      };
    };
  }