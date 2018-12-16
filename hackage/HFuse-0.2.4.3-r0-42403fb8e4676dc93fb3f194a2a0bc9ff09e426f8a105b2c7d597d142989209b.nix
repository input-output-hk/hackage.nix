{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HFuse";
        version = "0.2.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Montez Fitzpatrick <montezf@gmail.com>";
      author = "Jeremy Bobbio";
      homepage = "https://github.com/m15k/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library.";
      description = "Bindings for the FUSE library, compatible with Linux, OSXFUSE and FreeBSD.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."fuse") ];
      };
      exes = {
        "HelloFS" = {
          depends = pkgs.lib.optionals (flags.developer) [
            (hsPkgs.base)
            (hsPkgs.HFuse)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }