{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Hs2lib"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tamar Christina <tamar (at) zhox.com>";
      author = "Tamar Christina <tamar (at) zhox.com>";
      homepage = "http://blog.zhox.com/category/hs2lib/";
      url = "";
      synopsis = "A Library and Preprocessor that makes it easier to create shared libs from Haskell programs.";
      description = "The supplied PreProcessor can be run over any existing source and would generate FFI code for every function marked to be exported by the special notation documented inside the package. It then proceeds to compile this generated code into a lib.\n\nThe Library contains some helper code that's commonly needed to convert between types, and contains the code for the typeclasses the PreProcessor uses in the generated code to keep things clean.\n\nIt will always generated the required C types for use when calling the dll, but it will also generate the C# unsafe code if requested.\n\nRead http://blog.zhox.com/hs2lib.pdf (not published yet)\n\nCurrent Restrictions:\n\n- Does NOT support x64 bit versions of GHC. This will be added in future versions if enough demand exist.\n\n- You cannot export functions which have the same name (even if they're in different modules because 1 big hsc file is generated at the moment, no conflict resolutions)\n\n- You cannot export datatypes with the same name, same restriction as above.\n\n- Does not support automatic instance generation for infix constructors yet\n\nNOTE: Package is now working again, but I have fixed the version of haskell-src-exts to prevent it from breaking again.\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.haskell-src-exts)
          (hsPkgs.ghc)
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.syb)
          (hsPkgs.random)
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs))
          ];
        };
      exes = {
        "Hs2lib" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.ghc-paths)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.ghc)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haddock)
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.cereal)
            ];
          };
        "Hs2lib-debug" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.ghc-paths)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.ghc)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haddock)
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.cereal)
            ];
          };
        "Hs2lib-testgen" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.ghc-paths)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.ghc)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haddock)
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.cereal)
            ];
          };
        };
      tests = {
        "test-regression" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            ];
          };
        "test-regression-debug" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }