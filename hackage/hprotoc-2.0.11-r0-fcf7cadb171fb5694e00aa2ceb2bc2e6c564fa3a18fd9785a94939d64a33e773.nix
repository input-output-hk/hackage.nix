{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hprotoc";
        version = "2.0.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/package/hprotoc";
      url = "http://code.haskell.org/protocol-buffers/";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse language defined at \"http://code.google.com/apis/protocolbuffers/docs/proto.html\" and general haskell code to implement messages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hprotoc" = {
          depends  = [
            (hsPkgs.protocol-buffers)
            (hsPkgs.protocol-buffers-descriptor)
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
          ] ++ [ (hsPkgs.base) ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }