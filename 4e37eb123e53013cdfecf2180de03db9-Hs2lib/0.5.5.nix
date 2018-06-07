{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hs2lib";
          version = "0.5.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tamar Christina <tamar@zhox.com>";
        author = "Tamar Christina <tamar@zhox.com>";
        homepage = "http://blog.zhox.com/category/hs2lib/";
        url = "";
        synopsis = "A Library and Preprocessor that makes it easier to create shared libs from Haskell programs.";
        description = "The supplied PreProcessor can be run over any existing source and would generate FFI code for every function marked to be exported by the special notation documented inside the package. It then proceeds to compile this generated code into a lib.\n\nThe Library contains some helper code that's commonly needed to convert between types, and contains the code for the typeclasses the PreProcessor uses in the generated code to keep things clean.\n\nIt will always generated the required C types for use when calling the dll, but it will also generate the C# unsafe code if requested.\n\nRead http://blog.zhox.com/hs2lib.pdf (not published yet)\n\nCurrent Restrictions:\n\n- You cannot export functions which have the same name (even if they're in different modules because 1 big hsc file is generated at the moment, no conflict resolutions)\n\n- You cannot export datatypes with the same name, same restriction as above.\n\n- Does not support automatic instance generation for infix constructors yet\n";
        buildType = "Custom";
      };
      components = {
        Hs2lib = {
          depends  = [
            hsPkgs.haskell-src-exts
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.syb
            hsPkgs.random
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
            hsPkgs.buildPackages.cpphs
          ];
        };
        exes = {
          Hs2lib = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.directory
              hsPkgs.ghc-paths
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.process
              hsPkgs.ghc
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.haskell-src-exts
              hsPkgs.haddock
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.cereal
            ];
          };
          Hs2lib-debug = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.directory
              hsPkgs.ghc-paths
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.process
              hsPkgs.ghc
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.haskell-src-exts
              hsPkgs.haddock
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.cereal
            ];
          };
          Hs2lib-testgen = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.directory
              hsPkgs.ghc-paths
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.process
              hsPkgs.ghc
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.haskell-src-exts
              hsPkgs.haddock
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.cereal
            ];
          };
        };
        tests = {
          test-regression = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.haskell98
            ];
          };
          test-regression-debug = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.haskell98
            ];
          };
        };
      };
    }