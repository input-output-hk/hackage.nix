{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "crockford";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Henry Bucklow";
        maintainer = "Henry Bucklow <henry@elsie.org.uk>";
        author = "Henry Bucklow";
        homepage = "";
        url = "";
        synopsis = "An implementation of Douglas Crockford's base32 encoding.";
        description = "An implementation of Douglas Crockford's base32 encoding.";
        buildType = "Custom";
      };
      components = {
        crockford = {
          depends  = [
            hsPkgs.base
            hsPkgs.digits
            hsPkgs.safe
            hsPkgs.QuickCheck
          ];
        };
      };
    }