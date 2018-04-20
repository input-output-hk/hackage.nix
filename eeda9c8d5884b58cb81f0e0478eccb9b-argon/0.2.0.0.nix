{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "argon";
          version = "0.2.0.0";
        };
        license = "ISC";
        copyright = "2015 Michele Lacchia";
        maintainer = "michelelacchia@gmail.com";
        author = "Michele Lacchia";
        homepage = "http://github.com/rubik/argon";
        url = "";
        synopsis = "Measure your code's complexity";
        description = "Argon performs static analysis on your code in order to compute cyclomatic\ncomplexity. It is a quantitative measure of the number of linearly\nindipendent paths through the code.\n\nThe intended usage is through Argon's executable, which accepts a list of\nfile paths to analyze. The data can be optionally exported to JSON.";
        buildType = "Simple";
      };
      components = {
        argon = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.cpphs
            hsPkgs.uniplate
            hsPkgs.ansi-terminal
            hsPkgs.docopt
            hsPkgs.aeson
            hsPkgs.bytestring
          ];
        };
        exes = {
          argon = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.cpphs
              hsPkgs.uniplate
              hsPkgs.ansi-terminal
              hsPkgs.docopt
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.argon
            ];
          };
        };
        tests = {
          argon-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.argon
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.haskell-src-exts
              hsPkgs.cpphs
              hsPkgs.uniplate
              hsPkgs.ansi-terminal
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
          style = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }