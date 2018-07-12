{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "commander";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 James Wilson";
        maintainer = "me@unbui.lt";
        author = "James Wilson";
        homepage = "https://github.com/jsdw/hs-commander";
        url = "";
        synopsis = "pattern matching against string based commands";
        description = "An extensible, format-agnostic command parsing library designed\nto be easy to use and syntactically light weight.\n\nAssuming we write a parser to convert a command such as\n\n@calculator add 1 2 -v=yes@\n\nInto path and flags such as @[\"calculator\", \"add\"]@ and @Map.fromList [(\"v\",\"yes\")]@,\nThis library will then match said path and flags against a nested record type of\ncommands built up using lightweight monadic syntax and tries to execute\nthe associated function if the matching and value converting works, or returns\nan error if the path/flags fail to match any command.\n\nTo get started, see the documentation for the @Commander@ module\nbelow. Additionally, an /examples/ folder is included in the source\nillustrating usage - see https://github.com/jsdw/hs-commander for\nmore.";
        buildType = "Simple";
      };
      components = {
        "commander" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        exes = {
          "example1" = {
            depends  = [
              hsPkgs.base
              hsPkgs.commander
              hsPkgs.containers
            ];
          };
        };
        tests = {
          "commander-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.commander
            ];
          };
        };
      };
    }