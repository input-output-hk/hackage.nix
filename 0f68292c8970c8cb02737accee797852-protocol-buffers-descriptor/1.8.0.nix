{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "protocol-buffers-descriptor";
          version = "1.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Christopher Edward Kuklewicz";
        maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
        url = "http://code.haskell.org/protocol-buffers/";
        synopsis = "Text.DescriptorProto.Options and Google Protocol Buffer specifications";
        description = "Uses protocol-buffers package";
        buildType = "Simple";
      };
      components = {
        "protocol-buffers-descriptor" = {
          depends  = [
            hsPkgs.protocol-buffers
            hsPkgs.containers
            hsPkgs.bytestring
          ] ++ [ hsPkgs.base ];
        };
      };
    }