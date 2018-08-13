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
      specVersion = "1.2";
      identifier = {
        name = "com";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell COM support library";
      description = "COM + Automation libraries for Haskell.";
      buildType = "Simple";
    };
    components = {
      "com" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.old-time)
        ];
        libs = [
          (pkgs.kernel32)
          (pkgs.user32)
          (pkgs.ole32)
          (pkgs.oleaut32)
          (pkgs.advapi32)
        ];
      };
    };
  }