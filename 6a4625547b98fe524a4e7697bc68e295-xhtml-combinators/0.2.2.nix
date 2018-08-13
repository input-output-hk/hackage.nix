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
      specVersion = "1.2.3";
      identifier = {
        name = "xhtml-combinators";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alasdair.armstrong@googlemail.com";
      author = "Alasdair Armstrong";
      homepage = "http://www.dcs.shef.ac.uk/~aca08aa/xhtmlc.html";
      url = "";
      synopsis = "Fast and easy to use XHTML combinators.";
      description = "xhtml-combinators provides a set of (hopefully!) fast and\neasy to use XHTML 1.0 Strict combinators built on top of the\nData.Text library.";
      buildType = "Simple";
    };
    components = {
      "xhtml-combinators" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.xml)
          (hsPkgs.text)
        ];
      };
    };
  }