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
      specVersion = "1.24";
      identifier = { name = "language-bluespec"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2020-2022 Bluespec Inc., (C) 2022 Galois, Inc.";
      maintainer = "Ryan Scott <rscott@galois.com>";
      author = "Galois, Inc.";
      homepage = "https://github.com/GaloisInc/language-bluespec";
      url = "";
      synopsis = "An implementation of the Bluespec Haskell AST";
      description = "This package contains an implementation of the\n<http://wiki.bluespec.com/ Bluespec> language's AST. In\nparticular, this implements the Bluespec Haskell (BH)\nsyntax, also known as Bluespec Classic. We may add support\nfor the Bluespec SystemVerilog (BSV) syntax at a later date.\nTo our knowledge, there is no formal grammar that describes\nthe syntax of BH or BSV, so this package is based off of the\ncode in the <https://github.com/B-Lang-org/bsc Bluespec\ncompiler>. Although the Bluespec compiler is written in\nHaskell, it is not particularly simple to depend on the\ncompiler as a library, so this package exists to extract out\nthe relevant compiler code into a simple-to-use library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "9.0")) (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"));
        buildable = true;
      };
    };
  }