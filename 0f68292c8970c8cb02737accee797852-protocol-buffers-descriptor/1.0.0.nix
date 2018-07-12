{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "protocol-buffers-descriptor";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Christopher Edward Kuklewicz";
        maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
        url = "http://darcs.haskell.org/packages/protocol-buffers2/";
        synopsis = "Text.DescriptorProto.Options and Google Protocol Buffer specifications";
        description = "Uses protocol-buffers package";
        buildType = "Simple";
      };
      components = {
        "protocol-buffers-descriptor" = {
          depends  = [
            hsPkgs.protocol-buffers
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
      };
    }