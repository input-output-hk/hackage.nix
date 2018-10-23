{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "happstack-hsp";
        version = "6.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Jeremy Shaw";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using HSP templates in Happstack";
      description = "Happstack is a web application framework. HSP is an XML templating solution. This package makes it easy to use HSP templates with Happstack.";
      buildType = "Simple";
    };
    components = {
      "happstack-hsp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.happstack-server)
          (hsPkgs.harp)
          (hsPkgs.hsx)
          (hsPkgs.hsp)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          (hsPkgs.syb)
          (hsPkgs.text)
        ];
      };
    };
  }