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
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Program to manage the imports of a haskell module";
      description = "fix-imports is a small standalone program to manage the import block of a\nhaskell program.  It will try to add import lines for qualified names\nwith no corresponding import, remove unused import lines, and sort the\nimport block according to some heuristic you can define.  This only works\nfor qualified imports!  Unqualified imports are left untouched.\n\nIt's most convenient if bound to an editor key.  See the included vimrc\nfor an example.  You may have to cabal unpack or git clone to see it.";
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