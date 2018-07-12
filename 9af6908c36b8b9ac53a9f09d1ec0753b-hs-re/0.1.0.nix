{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hs-re";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "m@skahack.com";
        author = "Hiroki Sato";
        homepage = "";
        url = "";
        synopsis = "Easy to use Regex";
        description = "https://github.com/SKAhack/hs-re";
        buildType = "Simple";
      };
      components = {
        "hs-re" = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-base
            hsPkgs.regex-posix
            hsPkgs.array
          ];
        };
      };
    }