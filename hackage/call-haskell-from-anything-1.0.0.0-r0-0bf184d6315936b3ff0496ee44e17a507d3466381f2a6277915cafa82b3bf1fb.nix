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
        name = "call-haskell-from-anything";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Niklas Hambüchen (mail@nh2.me)";
      author = "Niklas Hambüchen (mail@nh2.me)";
      homepage = "https://github.com/nh2/call-haskell-from-anything";
      url = "";
      synopsis = "Call Haskell functions from other languages via serialization and dynamic libraries";
      description = "FFI via serialisation. See https://github.com/nh2/call-haskell-from-anything for details.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.msgpack)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "call-haskell-from-anything.so" = {
          depends  = [
            (hsPkgs.call-haskell-from-anything)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.msgpack)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }