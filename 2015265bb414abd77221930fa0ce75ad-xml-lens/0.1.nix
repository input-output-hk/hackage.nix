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
        name = "xml-lens";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/xml-lens";
      url = "";
      synopsis = "Lenses, traversals, prisms for xml-conduit";
      description = "";
      buildType = "Simple";
    };
    components = {
      "xml-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
        ];
      };
    };
  }