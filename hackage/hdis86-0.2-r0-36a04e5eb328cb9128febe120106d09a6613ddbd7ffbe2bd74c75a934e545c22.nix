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
    flags = { external-udis86 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hdis86"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "https://github.com/kmcallister/hdis86";
      url = "";
      synopsis = "Interface to the udis86 disassembler for x86 and x86-64 / AMD64";
      description = "@hdis86@ is an interface to the @udis86@ disassembler, which decodes machine\ncode for 16-, 32-, and 64-bit x86  and x86-64 / AMD64 processors.  @hdis86@\nprovides an instruction stream as a Haskell algebraic data type, suitable for\ninspection by pattern matching.  It also provides metadata such as assembly\nsyntax in Intel or AT&T flavors.\n\nThis library exposes three layers of wrapping:\n\n* The @Pure@ module has the simplest interface, effectively\n@ByteString -> [Instruction]@.\n\n* The @IO@ module exposes an imperative API closely matching the @udis86@\nstate machine, while providing Haskellish types and automatic resource\nmanagement.\n\n* The @C@ module is a direct import of the @udis86@ library, with C types\nand conventions.\n\nMany users can simply import @Hdis86@.\n\nThe @Incremental@ module provides disassembly of lazy @ByteString@s, and a\nfunction for building other incremental operations.\n\nBy default, @hdis86@ will statically link a built-in copy of @udis86-1.7@,\nwhich is provided by its author under a similar BSD license.  See inside the\ntarball for more information.  If you have @udis86@ installed on your system,\nyou can instead link dynamically using\n@cabal configure --flags=external-udis86@.  In that case see also @doc/customizing.txt@.\n\nThis code is available on GitHub at <https://github.com/kmcallister/hdis86>.\n\nThe @udis86@ project website is located at <http://udis86.sourceforge.net/>.\n\nNew in version 0.2:\n\n* Disassembly of lazy @ByteString@s\n\n* A function for building other incremental operations\n\n* Record selectors on @Instruction@\n\n* QuickCheck @Arbitrary@ instances for @Instruction@ and related types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        libs = pkgs.lib.optional (flags.external-udis86) (pkgs."udis86" or (errorHandler.sysDepError "udis86"));
        buildable = true;
      };
    };
  }