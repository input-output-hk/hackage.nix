{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fix-imports"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Program to manage the imports of a haskell module";
      description = "A small standalone program to manage the import block of a haskell program.\nIt will try to add import lines for qualified names with no corresponding\nimport, remove unused import lines, and sort the import block according to\nsome heuristic you can define.  This only works for qualified imports!\nUnqualified imports are left untouched.\n\nIt's most convenient if bound to an editor key.\n\nRecent major changes:\n\n* version 1.0.0\n\n* Change name from FixImports to fix-imports, which is more unixy.\n\n* Change ghc-pkg parsing from String to Text.\nIt's noticeably faster.\n\n* Add a more flexible system for prioritizing imports.\nWhen there are several possibilities for a module name, they are all given\nto a single function to decide.  The config file moved from\nfix-imports-priority to .fix-imports and can now specify sort orders for\npackages and modules by prefix.\n\n* Make -i includes for non-existent dirs ignored instead of causing an\nerror.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fix-imports" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }