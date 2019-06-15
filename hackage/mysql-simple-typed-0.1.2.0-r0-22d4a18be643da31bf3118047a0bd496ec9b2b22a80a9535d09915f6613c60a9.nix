{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-simple-typed"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-9 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/mysql-simple-typed";
      url = "";
      synopsis = "Typed extension to mysql simple";
      description = "Provide all required bindings for use with the typedquery";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mysql)
          (hsPkgs.mysql-simple)
          (hsPkgs.typedquery)
          (hsPkgs.template-haskell)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }