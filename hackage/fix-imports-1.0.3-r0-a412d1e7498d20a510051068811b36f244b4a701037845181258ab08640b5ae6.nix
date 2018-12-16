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
      specVersion = "1.6";
      identifier = {
        name = "fix-imports";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Program to manage the imports of a haskell module";
      description = "fix-imports is a small standalone program to manage the import block of a\nhaskell program.  It will try to add import lines for qualified names\nwith no corresponding import, remove unused import lines, and sort the\nimport block according to some heuristic you can define.  This only works\nfor qualified imports!  Unqualified imports are left untouched.\n\nIt's most convenient if bound to an editor key.\n\nRecent major changes:\n* version 1.0.2\n\n* Fix bug where a qualified import with >1 dot wasn't found.  And don't\nmess with Prelude.\n\n* version 1.0.1\n\n* Fix a bunch of bugs: properly recognize unqualified imports as imports,\nnever import the current module, don't pick up modules with the same suffix\nbut a different name.\n\n* version 1.0.0\n\n* Change name from FixImports to fix-imports, which is more unixy.\n\n* Change ghc-pkg parsing from String to Text.  It's noticeably faster.\n\n* Add a more flexible system for prioritizing imports.\nWhen there are several possibilities for a module name, they are all given\nto a single function to decide.  The config file moved from\nfix-imports-priority to .fix-imports and can now specify sort orders for\npackages and modules by prefix.\n\n* Make -i includes for non-existent dirs ignored instead of causing an\nerror.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fix-imports" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
            (hsPkgs.split)
            (hsPkgs.cpphs)
            (hsPkgs.text)
          ];
        };
      };
    };
  }