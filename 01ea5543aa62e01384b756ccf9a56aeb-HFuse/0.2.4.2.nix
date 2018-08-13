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
        name = "HFuse";
        version = "0.2.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Montez Fitzpatrick <montezf@gmail.com>";
      author = "Jeremy Bobbio";
      homepage = "https://github.com/m15k/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library.";
      description = "Bindings for the FUSE library, compatible with OSXFUSE and FreeBSD.";
      buildType = "Simple";
    };
    components = {
      "HFuse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs.fuse) ];
      };
    };
  }