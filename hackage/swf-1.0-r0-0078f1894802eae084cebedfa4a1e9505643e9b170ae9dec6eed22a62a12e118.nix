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
      specVersion = "0";
      identifier = {
        name = "swf";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw";
      author = "Jeremy Shaw";
      homepage = "http://www.n-heptane.com/nhlab";
      url = "";
      synopsis = "A library for create Shockwave Flash (SWF) files";
      description = "A library for create Shockwave Flash (SWF) files";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
        ];
      };
    };
  }