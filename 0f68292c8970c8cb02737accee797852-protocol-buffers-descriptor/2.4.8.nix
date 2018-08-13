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
        name = "protocol-buffers-descriptor";
        version = "2.4.8";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2015 Christopher Edward Kuklewicz";
      maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "https://github.com/k-bx/protocol-buffers";
      url = "http://hackage.haskell.org/package/protocol-buffers-descriptor";
      synopsis = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
      description = "Uses protocol-buffers package";
      buildType = "Simple";
    };
    components = {
      "protocol-buffers-descriptor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protocol-buffers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ];
      };
    };
  }