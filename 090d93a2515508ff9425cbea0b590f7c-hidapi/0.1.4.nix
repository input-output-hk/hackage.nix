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
        name = "hidapi";
        version = "0.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>";
      author = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/vahokif/haskell-hidapi";
      url = "";
      synopsis = "Haskell bindings to HIDAPI";
      description = "Haskell bindings to the HIDAPI library (<http://www.signal11.us/oss/hidapi/>).\n\nNote you need need to have the corresponding low-level\nlibrary installed for your OS, e.g. libudev-dev on Debian/Ubuntu,\nor just udev on distributions that don't split dev libraries.";
      buildType = "Simple";
    };
    components = {
      "hidapi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
        ];
        libs = if system.isWindows
          then [ (pkgs."setupapi") ]
          else pkgs.lib.optional (!system.isOsx) (pkgs."udev");
      };
    };
  }