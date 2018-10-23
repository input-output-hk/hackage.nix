{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "protocol-buffers";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
      url = "http://darcs.haskell.org/packages/protocol-buffers/";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse http://code.google.com/apis/protocolbuffers/docs/proto.html\nand perhaps general haskell code to use them";
      buildType = "Simple";
    };
    components = {
      "protocol-buffers" = {
        depends  = [
          (hsPkgs.binary)
          (hsPkgs.binary-strict)
          (hsPkgs.derive)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.haskell-src-exts)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }