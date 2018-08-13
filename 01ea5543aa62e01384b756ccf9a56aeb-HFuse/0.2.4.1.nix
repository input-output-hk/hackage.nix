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
        version = "0.2.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul van der Walt <cabal@denknerd.org>";
      author = "Jeremy Bobbio";
      homepage = "https://github.com/toothbrush/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library.";
      description = "Bindings for the FUSE library, compatible with OSXFUSE.";
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