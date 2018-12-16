{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fix-imports";
        version = "2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Program to manage the imports of a haskell module";
      description = "`fix-imports` is a small standalone program to manage the import block of\na haskell program.  It will try to add import lines for qualified names\nwith no corresponding import, remove unused import lines, and keep the\nimport block sorted, with optional rules for grouping.\n\nSupport for unqualified imports is limited to symbols you explicitly\nconfigure, so if you list `System.FilePath.(</>)`, it will add that import\nwhen you use it, or remove when it's no longer used, but it won't go search\nmodules for unqualified imports.\n\nIt doesn't mess with non-managed unqualified imports, so you can still use\nunqualified imports, you just have to do it manually.\n\nSince it's a unix-style filter, it should be possible to integrate into any\neditor.  There's an example vimrc to bind to a key in vim.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fix-imports" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cpphs)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.pretty)
            (hsPkgs.uniplate)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cpphs)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.pretty)
            (hsPkgs.uniplate)
            (hsPkgs.test-karya)
          ];
        };
      };
    };
  }