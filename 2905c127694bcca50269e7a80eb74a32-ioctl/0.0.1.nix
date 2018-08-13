{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "ioctl";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "uzytkownik2@gmail.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "Type-safe I/O control package";
      description = "Package allowing type-safe I/O control";
      buildType = "Simple";
    };
    components = {
      "ioctl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }