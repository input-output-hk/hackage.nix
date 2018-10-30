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
        name = "signal";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "remdezx+github@gmail.com";
      author = "Piotr Mlodawski";
      homepage = "http://github.com/pmlodawski/signal";
      url = "";
      synopsis = "Multiplatform signal support for Haskell";
      description = "This simple library allows you to handle os signals on both Linux and Windows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.signal)
          ];
        };
      };
    };
  }