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
      specVersion = "1.6";
      identifier = {
        name = "usb-iteratee";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/basvandijk/usb-iteratee/";
      url = "";
      synopsis = "Iteratee enumerators for the usb package";
      description = "This packages provides @iteratee@ enumerators for the @usb@ package.";
      buildType = "Custom";
    };
    components = {
      "usb-iteratee" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bindings-libusb)
          (hsPkgs.iteratee)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.usb)
        ];
      };
    };
  }