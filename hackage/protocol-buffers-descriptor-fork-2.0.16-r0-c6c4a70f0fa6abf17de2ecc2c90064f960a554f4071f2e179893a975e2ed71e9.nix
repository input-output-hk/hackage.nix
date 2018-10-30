{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "protocol-buffers-descriptor-fork";
        version = "2.0.16";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012 Christopher Edward Kuklewicz";
      maintainer = "Stefan Wehr <wehr@cp-med.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://darcs.factisresearch.com/pub/protocol-buffers-fork/";
      url = "http://hackage.haskell.org/package/protocol-buffers-descriptor-fork";
      synopsis = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
      description = "Uses protocol-buffers package. This is a fork of the protocol-buffers-descriptor library at http://hackage.haskell.org/package/protocol-buffers-descriptor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.protocol-buffers-fork)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }