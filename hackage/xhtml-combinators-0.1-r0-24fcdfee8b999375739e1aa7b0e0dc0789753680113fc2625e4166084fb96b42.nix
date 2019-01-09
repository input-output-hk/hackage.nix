{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "xhtml-combinators"; version = "0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.xml)
          (hsPkgs.text)
          ];
        };
      };
    }