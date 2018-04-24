{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "CoreFoundation";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "reiner.pope@gmail.com";
        author = "Reiner Pope";
        homepage = "https://github.com/reinerp/CoreFoundation";
        url = "";
        synopsis = "Bindings to Mac OSX's CoreFoundation framework";
        description = "Bindings to Mac OSX's CoreFoudnation framework";
        buildType = "Simple";
      };
      components = {
        CoreFoundation = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.time
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.property-list
            hsPkgs.network
            hsPkgs.filepath
            hsPkgs.deepseq
          ];
          frameworks = [
            pkgs.CoreFoundation
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }