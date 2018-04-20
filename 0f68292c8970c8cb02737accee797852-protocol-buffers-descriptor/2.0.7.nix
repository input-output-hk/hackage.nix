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
          version = "2.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2011 Christopher Edward Kuklewicz";
        maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers-descriptor";
        url = "http://code.haskell.org/protocol-buffers/";
        synopsis = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
        description = "Uses protocol-buffers package";
        buildType = "Simple";
      };
      components = {
        protocol-buffers-descriptor = {
          depends  = [
            hsPkgs.protocol-buffers
            hsPkgs.bytestring
            hsPkgs.containers
          ] ++ [ hsPkgs.base ];
        };
      };
    }