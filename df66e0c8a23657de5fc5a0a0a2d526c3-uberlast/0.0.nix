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
        name = "uberlast";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Fumiaki Kinoshita 2014";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https:/github.com/fumieval/uberlast";
      url = "";
      synopsis = "Generate overloaded lenses from plain data declaration";
      description = "";
      buildType = "Simple";
    };
    components = {
      "uberlast" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
          (hsPkgs.tagged)
        ];
      };
    };
  }