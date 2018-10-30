{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "happstack-heist";
        version = "7.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Chris Smith, Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using Heist templates in Happstack";
      description = "Happstack is a web application framework. Heist is an XML templating solution. This package makes it easy to use Heist templates with Happstack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.happstack-server)
          (hsPkgs.heist)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
    };
  }