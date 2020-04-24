{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "texts"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "None";
      homepage = "";
      url = "";
      synopsis = "None";
      description = "None";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }