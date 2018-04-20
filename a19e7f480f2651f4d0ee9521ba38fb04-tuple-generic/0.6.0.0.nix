{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tuple-generic";
          version = "0.6.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/tuple-generic";
        url = "";
        synopsis = "Generic operations on tuples";
        description = "Generic operations on tuples.\n\nI'm not sure that anybody uses this library, so I haven't bothered adding anything I don't need. However, file an issue if you need something to be added to the library and I'll try to respond to it promptly.";
        buildType = "Simple";
      };
      components = {
        tuple-generic = {
          depends  = [ hsPkgs.base ];
        };
      };
    }