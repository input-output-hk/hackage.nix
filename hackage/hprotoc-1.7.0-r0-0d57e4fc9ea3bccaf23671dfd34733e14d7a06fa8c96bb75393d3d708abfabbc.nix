{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hprotoc"; version = "1.7.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
      url = "http://darcs.haskell.org/packages/protocol-buffers2/";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse http://code.google.com/apis/protocolbuffers/docs/proto.html\nand perhaps general haskell code to use them";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hprotoc" = {
          depends = [
            (hsPkgs.protocol-buffers)
            (hsPkgs.protocol-buffers-descriptor)
            (hsPkgs.binary)
            (hsPkgs.utf8-string)
            (hsPkgs.parsec)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            ] ++ [ (hsPkgs.base) ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
            ];
          };
        };
      };
    }