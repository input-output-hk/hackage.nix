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
    flags = { developer = false; embedded_double_conversion = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "double-conversion"; version = "2.0.5.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/haskell/double-conversion";
      url = "";
      synopsis = "Fast conversion between single and double precision floating point and text";
      description = "A library that performs fast, accurate conversion between\nfloating point and text.\n\nThis library is implemented as bindings to the C++\n@double-conversion@ library written by Florian Loitsch at Google:\n<https://github.com/floitsch/double-conversion>.\n\nNow it can convert single precision numbers, and also it can create\nBuilder, instead of bytestring or text.\n\nThe 'Text' versions of these functions are about 30 times faster\nthan the default 'show' implementation for the 'Double' type.\n\nThe 'ByteString' versions are have very close speed to the 'Text' versions;\n\nBuilder versions (both for Text and Bytestring) are slower on single value,\nbut they are much faster on large number of values\n(up to 20x faster on list with 20000 doubles).\n\nAs a final note, be aware that the @bytestring-show@ package is\nabout 50% slower than simply using 'show'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) (if system.isOsx || system.isFreebsd
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else if system.isWindows
            then if system.isX86_64 && (compiler.isGhc && (compiler.version).lt "8.6.5")
              then [
                (pkgs."stdc++-6" or (errorHandler.sysDepError "stdc++-6"))
                (pkgs."gcc_s_seh-1" or (errorHandler.sysDepError "gcc_s_seh-1"))
                ]
              else if system.isX86_64
                then [
                  (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                  (pkgs."gcc_s_seh-1" or (errorHandler.sysDepError "gcc_s_seh-1"))
                  ]
                else if compiler.isGhc && (compiler.version).ge "8.6.5"
                  then [
                    (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                    (pkgs."gcc_s_dw2-1" or (errorHandler.sysDepError "gcc_s_dw2-1"))
                    ]
                  else [
                    (pkgs."stdc++-6" or (errorHandler.sysDepError "stdc++-6"))
                    (pkgs."gcc_s_dw2-1" or (errorHandler.sysDepError "gcc_s_dw2-1"))
                    ]
            else [
              (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
              ]) ++ (pkgs.lib).optional (!flags.embedded_double_conversion) (pkgs."double-conversion" or (errorHandler.sysDepError "double-conversion"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }