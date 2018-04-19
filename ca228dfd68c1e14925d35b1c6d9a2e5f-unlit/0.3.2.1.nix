{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unlit";
          version = "0.3.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 (c) Pepijn Kokke";
        maintainer = "pepijn.kokke@gmail.com";
        author = "Pepijn Kokke";
        homepage = "";
        url = "";
        synopsis = "Tool to convert literate code between styles or to code.";
        description = "Tool to convert literate code between styles or to code.\nUsage:\n\n> unlit\n>   -f STYLE_NAME  --from=STYLE_NAME    Source style (all, bird, haskell, latex, markdown, tildefence, backtickfence)\n>   -t STYLE_NAME  --to=STYLE_NAME      Target style (bird, latex, tildefence, backtickfence, code)\n>   -i FILE        --input=FILE         Input file (optional)\n>   -o FILE        --output=FILE        Output file (optional)\n>   -l LANGUAGE    --language=LANGUAGE  Programming language (restrict fenced code blocks)\n>   -h             --help               Show help\n>   -v             --version            Show version\n";
        buildType = "Simple";
      };
      components = {
        unlit = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.text
          ];
        };
        exes = {
          unlit = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.text
            ];
          };
        };
      };
    }