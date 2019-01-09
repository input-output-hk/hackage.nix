{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fay"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://chrisdone.com/fay";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a strict subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal build\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\nLots of documentation updates, some runtime\nfixes, some more examples, tail-call optimization\nprototype.\n\n* Add analytics to .cabal.\n\n* Fix types for ghc.\n\n* Use continue (for now) for TCO (refs #19).\n\n* Tail recursive optimization prototype (refs #19).\n\n* Tail recursive example doc.\n\n* Ref example.\n\n* fromInteger/fromRational in the runtime (closes #20).\n\n* Add missing operators to Prelude and built-ins list (closes #16).\n\n* Throw error about unsupported `where' (closes #17).\n\n* Fix silly enumFromTo mistake.\n\n* A test-case that tail-recursive functions run iteratively.\n\n* Optimize constant patterns slightly, shaves off some time.\n\n* Add Fay.Show (preliminary implementation).\n\n* Add data/show example.\n\n* Add note about generating docs.\n\n* Add note that you need nodejs installed to run the tests.\n\n* Include google analytics in docs and generate index.html rather than home.html.\n\n* Updated dom example with onload handler.\n\n* Remove max-width to fix firefox.\n\n* Mention minifying slightly in docs.\n\n* Remove language-javascript dependency.\n\n* Remove non-ascii character in runtime.js\n\n* Don't print counts in fay-tests.\n\n* Add small note about livescript.\n\n* Added fork on github for docs.\n\n* Use === instead of == for jseq (closes #6).\n\n* Some word break on the pre's.\n\n* Rename modules from Main to X (closes #5).\n\n* Ignore more stuff.\n\n* Toggle examples.\n\n* Put examples side-by-side (closes #3).\n\n* s/strict/proper to avoid confusion.\n\n* Convert from function expression assignments to function definitions\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.json)
          (hsPkgs.pretty-show)
          (hsPkgs.data-default)
          (hsPkgs.HUnit)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          ];
        };
      exes = {
        "fay" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.json)
            (hsPkgs.process)
            (hsPkgs.data-default)
            ];
          };
        "fay-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.json)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            ];
          };
        "fay-docs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.json)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.data-default)
            ];
          };
        };
      };
    }