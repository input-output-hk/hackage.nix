{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Concurrent-Cache";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marcus@conditionraise.se";
        author = "Marcus Ofenhed";
        homepage = "";
        url = "";
        synopsis = "A Cached variable for IO functions.";
        description = "This package allows for caching IO functions, either on a\ntimeout or designed to only fetch once.";
        buildType = "Simple";
      };
      components = {
        Concurrent-Cache = {
          depends  = [ hsPkgs.base ];
        };
      };
    }