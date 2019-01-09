{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "twine"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jimmyjazz14@gmail.com";
      author = "James Sanders";
      homepage = "http://twine.james-sanders.com";
      url = "";
      synopsis = "very simple template language";
      description = "very simple template language";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          ];
        };
      };
    }