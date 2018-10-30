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
      specVersion = "1.6";
      identifier = {
        name = "mtp";
        version = "0.1.1.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Joachim Fasting 2010";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "Joachim Fasting";
      homepage = "";
      url = "";
      synopsis = "Bindings to libmtp";
      description = "A FFI binding to libmtp, an implementation of the Media Transfer\nProtocol.\n\nSee <http://libmtp.sourceforge.net> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.filepath)
        ];
        libs = [ (pkgs."mtp") ];
      };
    };
  }