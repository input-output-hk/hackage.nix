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
        name = "irc-colors";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Edward Tjörnhammar";
      maintainer = "Edward Tjörnhammar <ed@cflags.cc>";
      author = "Edward Tjörnhammar <ed@cflags.cc>";
      homepage = "";
      url = "";
      synopsis = "Colourize your IRC strings";
      description = "Uses commonly accepted colour codes to colourize and style your IRC strings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
    };
  }