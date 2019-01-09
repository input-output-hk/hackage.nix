{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "regular-xmlpickler"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "http://github.com/silkapp/regular-xmlpickler";
      url = "";
      synopsis = "Generic generation of HXT XmlPickler instances using Regular.";
      description = "Generic generation of HXT XmlPickler instances using Regular.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hxt) (hsPkgs.regular) (hsPkgs.text) ];
        };
      };
    }