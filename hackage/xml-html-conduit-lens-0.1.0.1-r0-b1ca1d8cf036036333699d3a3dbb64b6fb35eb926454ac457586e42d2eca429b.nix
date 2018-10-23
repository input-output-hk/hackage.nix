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
        name = "xml-html-conduit-lens";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Fumiaki Kinoshita, 2014 Matvey Aksenov";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Fumiaki Kinoshita, Matvey Aksenov";
      homepage = "https://github.com/supki/xml-html-conduit-lens#readme";
      url = "";
      synopsis = "Optics for xml-conduit and html-conduit";
      description = "Optics for xml-conduit and html-conduit";
      buildType = "Simple";
    };
    components = {
      "xml-html-conduit-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.html-conduit)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-lens)
            (hsPkgs.lens)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-html-conduit-lens)
          ];
        };
      };
    };
  }