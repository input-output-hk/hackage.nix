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
      specVersion = "1.12";
      identifier = { name = "ir-builder"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2026-present Heikki Johannes Hildén";
      maintainer = "hildenjohannes@gmail.com";
      author = "Heikki Johannes Hildén";
      homepage = "https://codeberg.org/laserpants/ir-builder";
      url = "";
      synopsis = "Monadic DSL for constructing LLVM IR";
      description = "A monadic DSL for constructing LLVM IR.\nWrite Haskell, get LLVM assembly — no external tools or C bindings required.\n\nImport the complete public API with a single line:\n\n@import LLVM.IR@\n\nThen define functions and emit instructions:\n\n> example :: Text\n> example = compileModule \"example\" $\n>   define void \"hello\" [] LExternal [] $ do\n>     beginBlock \"entry\"\n>     retVoid\n\nProduces:\n\n> define void @hello() {\n> entry:\n>   ret void\n> }\n\n== Module guide\n\n[\"LLVM.IR\"] Complete re-export of the public API. Start here.\n\n[\"LLVM.IRBuilder\"] Builder monad and compilation entry points:\n@compileModule@, @buildModule@, @define@, @beginBlock@, @block@,\n@declare@, @emitGlobal@, and the @(\\<\\#\\#\\>)@ inline-comment operator.\n\n[\"LLVM.IRInstruction.Constructors\"] Instruction smart constructors:\n@add@, @sub@, @mul@, @sdiv@, @load@, @store@, @gep@, @icmp@, @phi@,\n@call@, @callVoid@, @select@, @alloca@, @sext@, @zext@, and more.\n\n[\"LLVM.IRType.Constructors\"] Type smart constructors: @i1@, @i8@, @i16@,\n@i32@, @i64@, @i128@, @ptr@, @void@, @float@, @double@, @struct@,\n@array@, @vector@.\n\n[\"LLVM.IRTerminator.Constructors\"] Block terminators: @ret@, @retVoid@,\n@br@, @condbr@, @switch@, @unreachable@.\n\n[\"LLVM.IRBuilder.Error\"] @IRBuilderError@ type and @displayError@ for\nprograms using explicit error handling via @compileModuleWith@ or\n@buildModuleWith@.\n\n[\"LLVM.IRRenderer\"] Render an @IRModule@ to LLVM assembly text.\n\n[\"LLVM.IR.Examples\"] Complete, runnable examples: \\\"Hello, World!\\\",\nannotated addition, and iterative factorial with @mdo@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "ir-builder-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ir-builder" or (errorHandler.buildDepError "ir-builder"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }