{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fay-websockets"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrey Prokopenko";
      maintainer = "persiantiger@yandex.ru";
      author = "Andrey Prokopenko";
      homepage = "https://github.com/swamp-agr/fay-websockets";
      url = "";
      synopsis = "Websockets FFI library for Fay";
      description = "Websockets FFI library for Fay";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.fay-base) ]; }; };
    }