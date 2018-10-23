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
        name = "yi-misc-modes";
        version = "0.13.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor miscellaneous modes";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yi-misc-modes" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.microlens-platform)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.yi-core)
          (hsPkgs.yi-language)
          (hsPkgs.yi-rope)
        ];
      };
    };
  }