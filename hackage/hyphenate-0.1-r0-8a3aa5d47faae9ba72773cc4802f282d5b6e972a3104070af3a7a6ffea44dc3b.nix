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
        name = "hyphenate";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2009, alpheccar";
      maintainer = "rd@slavepianos.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Text hyphenation algorithm";
      description = "Text hyphenation algorithm";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }