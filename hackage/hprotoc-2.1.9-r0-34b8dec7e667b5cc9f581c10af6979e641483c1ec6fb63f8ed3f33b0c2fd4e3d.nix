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
        name = "hprotoc";
        version = "2.1.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 Christopher Edward Kuklewicz";
      maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "https://github.com/k-bx/protocol-buffers";
      url = "http://hackage.haskell.org/package/hprotoc";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse language defined at <http://code.google.com/apis/protocolbuffers/docs/proto.html> and general haskell code to implement messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "hprotoc" = {
          depends = [
            (hsPkgs.protocol-buffers)
            (hsPkgs.protocol-buffers-descriptor)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.utf8-string)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }