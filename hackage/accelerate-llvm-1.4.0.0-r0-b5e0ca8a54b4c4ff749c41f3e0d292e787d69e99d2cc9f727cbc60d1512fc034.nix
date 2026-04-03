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
      specVersion = "2.2";
      identifier = { name = "accelerate-llvm"; version = "1.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend component generating LLVM IR";
      description = "This library implements direct LLVM IR generation for the /Accelerate/\nlanguage. For further information, refer to the main\n<https://hackage.haskell.org/package/accelerate accelerate> package. As a\nuser of Accelerate, you do not need to use this package; use\n@accelerate-llvm-native@ or @accelerate-llvm-ptx@ instead.\n\n[/Dependencies/]\n\nHaskell dependencies are available from Hackage. The following external\ndependencies are also required:\n\n* <https://clang.llvm.org/ clang> (not used to compile C code, but to compile generated LLVM IR via a mostly LLVM-version-independent interface)\n* <https://sourceware.org/libffi/ libFFI> (if using <https://hackage.haskell.org/package/accelerate-llvm-native accelerate-llvm-native>)\n* <https://developer.nvidia.com/cuda-downloads CUDA> (if using <https://hackage.haskell.org/package/accelerate-llvm-ptx accelerate-llvm-ptx>)\n\nFor installation instructions, see the <https://github.com/AccelerateHS/accelerate-llvm#readme README>.\n\nThis package includes (and exposes) a forked copy of\n<https://hackage.haskell.org/package/llvm-pretty llvm-pretty> due to some\nbreaking changes needed to make accelerate-llvm work. Upstreaming these\nchanges is planned. This code (under\n@Data.Array.Accelerate.LLVM.Internal.LLVMPretty@) is __not__ public API and\nmay disappear or change at any time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."accelerate-llvm".components.sublibs.llvm-pretty-accfork or (errorHandler.buildDepError "accelerate-llvm:llvm-pretty-accfork"))
        ];
        buildable = true;
      };
      sublibs = {
        "llvm-pretty-accfork" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          ];
          buildable = true;
        };
      };
    };
  }