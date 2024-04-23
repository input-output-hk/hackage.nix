{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Hs2lib"; version = "0.4.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tamar Christina <tamar@zhox.com>";
      author = "Tamar Christina <tamar@zhox.com>";
      homepage = "http://blog.zhox.com/category/hs2lib/";
      url = "";
      synopsis = "A Library and Preprocessor that makes it easier to create shared libs from Haskell programs.";
      description = "The supplied PreProcessor can be run over any existing source and would generate FFI code for every function marked to be exported by the special notation documented inside the package. It then proceeds to compile this generated code into a windows DLL.\n\nThe Library contains some helper code that's commonly needed to convert between types, and contains the code for the typeclasses the PreProcessor uses in the generated code to keep things clean.\n\nIt will always generated the required C types for use when calling the dll, but it will also generate the C# unsafe code if requested.\n\nRead http://blog.zhox.com/hs2lib.pdf (not published yet)\n\nCurrent Restrictions:\n\n- You cannot export functions which have the same name (even if they're in different modules because 1 big hsc file is generated at the moment, no conflict resolutions)\n\n- You cannot export datatypes with the same name, same restriction as above.\n\n- Does not support automatic instance generation for infix constructors yet\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "Hs2lib" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
          buildable = true;
        };
      };
    };
  }