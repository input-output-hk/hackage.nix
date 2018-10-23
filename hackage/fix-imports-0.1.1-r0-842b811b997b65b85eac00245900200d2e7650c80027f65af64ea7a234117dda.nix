{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "fix-imports";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Program to manage the imports of a haskell module";
      description = "A small standalone program to manage the import block of a haskell program.\nIt will try to add import lines for qualified names with no corresponding\nimport, remove unused import lines, and sort the import block according to\nsome heuristic you can define.  This only works for qualified imports!\nUnqualified imports are left untouched.\n\nIt's most convenient if bound to an editor key.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "FixImports" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
            (hsPkgs.split)
            (hsPkgs.cpphs)
          ];
        };
      };
    };
  }