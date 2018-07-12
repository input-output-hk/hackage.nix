{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hSimpleDB";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Himmelstrup <lemmih@gmail.com>";
        author = "David Himmelstrup 2009, Greg Heartsfield 2007";
        homepage = "";
        url = "";
        synopsis = "Interface to Amazon's SimpleDB service.";
        description = "Interface to Amazon's SimpleDB service.";
        buildType = "Simple";
      };
      components = {
        "hSimpleDB" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.utf8-string
            hsPkgs.Crypto
            hsPkgs.dataenc
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.HTTP
          ];
        };
      };
    }