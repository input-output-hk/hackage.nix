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
        version = "2011.6.11";
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
          (hsPkgs.parallel)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.monoid-owns)
          (hsPkgs.data-default)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
        ];
      };
    };
  }