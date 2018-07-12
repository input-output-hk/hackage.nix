{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "no-role-annots";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
        author = "Richard Eisenberg <eir@cis.upenn.edu>";
        homepage = "https://github.com/goldfirere/no-role-annots";
        url = "";
        synopsis = "Role annotations without -XRoleAnnotations";
        description = "This package is intended to ease the transition from GHC 7.6.3- to GHC 7.8+\nby providing a backward-compatible role annotation syntax. The module\nLanguage.Haskell.RoleAnnots exports backward-compatible declarations\nusable to assign stricter roles to declarations. Proper role annotations\nare preferred, but these work, too.\nThe module Language.Haskell.RoleAnnots.Check provides a way to check\nthat a datatype has a set of desired roles. This might be suitable for\nuse in a testsuite.\nSee the module documentation for details.\nNote that this package works only with GHC 7.4 and up, because it depends\non the -XPolyKinds extension. If you need backward compatibility before\n7.4, then please look at the source code and adapt the definitions to the\nkinds of the variables in your program.";
        buildType = "Simple";
      };
      components = {
        "no-role-annots" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "sanity-check" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }