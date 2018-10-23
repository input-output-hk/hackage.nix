{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yi-snippet";
        version = "0.13.3";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Snippet support for yi";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yi-snippet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.free)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.yi-core)
          (hsPkgs.yi-rope)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.free)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.yi-core)
            (hsPkgs.yi-rope)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-hunit)
            (hsPkgs.yi-snippet)
          ];
        };
      };
    };
  }