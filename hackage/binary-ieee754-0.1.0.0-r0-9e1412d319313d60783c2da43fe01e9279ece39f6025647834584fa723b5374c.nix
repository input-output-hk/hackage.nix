{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "binary-ieee754"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "Winterland";
      homepage = "https://github.com/winterland1989/binary-ieee754";
      url = "";
      synopsis = "Backport ieee754 float double combinators to older binary";
      description = "Backport ieee754 float double combinators to older binary";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.binary) ];
        };
      };
    }