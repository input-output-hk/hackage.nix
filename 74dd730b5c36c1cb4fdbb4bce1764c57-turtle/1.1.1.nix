{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "turtle";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Shell programming, Haskell-style";
        description = "@turtle@ is a reimplementation of the Unix command line environment\nin Haskell so that you can use Haskell as both a shell and a scripting\nlanguage.\n\nFeatures include:\n\n* Batteries included: Command an extended suite of predefined utilities\n\n* Interoperability: You can still run external shell commands\n\n* Portability: Works on Windows, OS X, and Linux\n\n* Exception safety: Safely acquire and release resources\n\n* Streaming: Transform or fold command output in constant space\n\n* Patterns: Use typed regular expressions that can parse structured values\n\n* Formatting: Type-safe @printf@-style text formatting\n\n* Modern: Supports @text@ and @system-filepath@\n\nRead \"Turtle.Tutorial\" for a detailed tutorial or \"Turtle.Prelude\" for a\nquick-start guide\n\n@turtle@ is designed to be beginner-friendly, but as a result lacks certain\nfeatures, like tracing commands.  If you feel comfortable using @turtle@\nthen you should also check out the @Shelly@ library which provides similar\nfunctionality.";
        buildType = "Simple";
      };
      components = {
        turtle = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.clock
            hsPkgs.directory
            hsPkgs.foldl
            hsPkgs.managed
            hsPkgs.process
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.text
              hsPkgs.turtle
            ];
          };
        };
      };
    }