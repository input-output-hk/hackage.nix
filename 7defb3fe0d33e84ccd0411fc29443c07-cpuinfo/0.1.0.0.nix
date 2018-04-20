{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cpuinfo";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Travis Whitaker 2016";
        maintainer = "pi.boy.travis@gmail.com";
        author = "Travis Whitaker";
        homepage = "https://github.com/TravisWhitaker/cpuinfo";
        url = "";
        synopsis = "Haskell Library for Checking CPU Information";
        description = "Haskell Library for Checking CPU Information";
        buildType = "Simple";
      };
      components = {
        cpuinfo = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.deepseq
          ];
        };
      };
    }