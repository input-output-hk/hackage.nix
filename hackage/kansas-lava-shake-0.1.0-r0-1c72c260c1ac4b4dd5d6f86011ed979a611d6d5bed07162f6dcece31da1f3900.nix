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
      specVersion = "1.10";
      identifier = {
        name = "kansas-lava-shake";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Gergo Erdi";
      maintainer = "Gergo Erdi <gergo@erdi.hu>";
      author = "Gergo Erdi";
      homepage = "";
      url = "";
      synopsis = "Shake rules for building Kansas Lava projects";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.shake)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.hastache)
        ];
      };
    };
  }