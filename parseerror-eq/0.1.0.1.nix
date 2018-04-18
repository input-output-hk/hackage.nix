{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parseerror-eq";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2015 Stack Builders Inc.";
        maintainer = "justin@stackbuilders.com";
        author = "Justin Leitgeb";
        homepage = "https://github.com/stackbuilders/parseerror-eq";
        url = "";
        synopsis = "Adds and Eq instance for Parsec's ParseError if needed";
        description = "\nA library to help with compatibility against Parsec versions. Adds an\ninstance of `Eq` to the `ParseError` data type, if it's missing from the\nversion of Parsec that you're compiling against.\n\nTo test Parsec's parsing, it's very useful to have an Eq instance for\nParseError. This is included in Parsec versions >= 3.1.9, but you need\nto define it yourself in previous versions.\n\nThis simple library conditionally adds an Eq instance for ParseError\nonly if the Parsec version being used is < 3.1.9. To use it, just add\nparseerror-eq to your cabal dependencies, and in the module where you want\nto compare ParseErrors,\n\n> import Text.ParseErrorEq ()\n\nThe ParseError Eq instance will be imported if it is necessary, otherwise\nthe ParseErrorEq module is empty, so nothing will happen. This ensures that\nyour code that needs the ParseError Eq instance will work regardless of the\nParsec version that it is compiled against.\n";
        buildType = "Simple";
      };
      components = {
        parseerror-eq = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        tests = {
          parseerror-eq-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.hspec
            ];
          };
        };
      };
    }