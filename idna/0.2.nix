{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "idna";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Pollard <porges@porg.es>";
        author = "George Pollard <porges@porg.es>";
        homepage = "";
        url = "";
        synopsis = "Implements IDNA (RFC 3490).";
        description = "Implements IDNA - Internationalized Domain Names in Applications (RFC 3490).";
        buildType = "Simple";
      };
      components = {
        idna = {
          depends  = [
            hsPkgs.base
            hsPkgs.stringprep
            hsPkgs.text
            hsPkgs.punycode
          ];
        };
      };
    }