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
        name = "moe";
        version = "2010.9.29.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/moe";
      url = "";
      synopsis = "html with style";
      description = "a purely functional html combinator with a clean syntax";
      buildType = "Simple";
    };
    components = {
      "moe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mps)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.dlist)
        ];
      };
    };
  }