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
    flags = { linux-getrandom = true; native = false; wipe-memset = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "raaz"; version = "0.3.9"; };
      license = "(Apache-2.0 OR BSD-3-Clause)";
      copyright = "(c) 2012 Piyush P Kurur";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "https://github.com/raaz-crypto/raaz";
      url = "";
      synopsis = "Fast and type safe cryptography.";
      description = "Raaz is a cryptographic library which provides the state of the art\ncryptographic primitives via a high-level, type safe interface. The\ndefault interface provided to the user is through the top level\nmodule \"Raaz\". Rather than bothering the user with low-level details\nlike the selection of primitives or entropy sources, this top level\nmodule only talks about the desired cryptographic operation (whether\nit is message digest or message encryption etc). A standalone\napplication that needs cryptography should stick to using this top\nlevel interface.\n\nSometimes the selection of primitives is not in our hands --- we may\nneed to interface with other programs written in other languages or\nusing other libraries. For such situation, raaz exposes a primitive\nspecific interface. As an example @raaz@ exposes the\n@Raaz.Digest.Sha256@ module that gives the same interface as that of\n\"Raaz.Digest\" but uses sha256 as the underlying cryptographic hash.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
          (hsPkgs."raaz".components.sublibs.mac-indef or (errorHandler.buildDepError "raaz:mac-indef"))
          (hsPkgs."raaz".components.sublibs.xchacha-indef or (errorHandler.buildDepError "raaz:xchacha-indef"))
          (hsPkgs."raaz".components.sublibs.aead-api or (errorHandler.buildDepError "raaz:aead-api"))
          (hsPkgs."raaz".components.sublibs.auth-api or (errorHandler.buildDepError "raaz:auth-api"))
          (hsPkgs."raaz".components.sublibs.digest-api or (errorHandler.buildDepError "raaz:digest-api"))
          (hsPkgs."raaz".components.sublibs.libverse or (errorHandler.buildDepError "raaz:libverse"))
          (hsPkgs."raaz".components.sublibs.random-api or (errorHandler.buildDepError "raaz:random-api"))
          (hsPkgs."raaz".components.sublibs.implementation or (errorHandler.buildDepError "raaz:implementation"))
        ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
          (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
        ];
        build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
      };
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "libverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "buffer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "mac-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.utils or (errorHandler.buildDepError "raaz:utils"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "xchacha-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "digest-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
            (hsPkgs."raaz".components.sublibs.utils or (errorHandler.buildDepError "raaz:utils"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "auth-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.utils or (errorHandler.buildDepError "raaz:utils"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "random-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "encrypt-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.utils or (errorHandler.buildDepError "raaz:utils"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "aead-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.utils or (errorHandler.buildDepError "raaz:utils"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "implementation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.libverse or (errorHandler.buildDepError "raaz:libverse"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "test-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "test-cipher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
            (hsPkgs."raaz".components.sublibs.encrypt-api or (errorHandler.buildDepError "raaz:encrypt-api"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "test-digest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.digest-api or (errorHandler.buildDepError "raaz:digest-api"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "test-auth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.auth-api or (errorHandler.buildDepError "raaz:auth-api"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "test-auth-implementation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
            (hsPkgs."raaz".components.sublibs.implementation or (errorHandler.buildDepError "raaz:implementation"))
            (hsPkgs."raaz".components.sublibs.mac-indef or (errorHandler.buildDepError "raaz:mac-indef"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "bench-types" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion-measurement" or (errorHandler.buildDepError "criterion-measurement"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "bench-prim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion-measurement" or (errorHandler.buildDepError "criterion-measurement"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.bench-types or (errorHandler.buildDepError "raaz:bench-types"))
            (hsPkgs."raaz".components.sublibs.indef or (errorHandler.buildDepError "raaz:indef"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "bench-csprg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion-measurement" or (errorHandler.buildDepError "criterion-measurement"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.bench-types or (errorHandler.buildDepError "raaz:bench-types"))
            (hsPkgs."raaz".components.sublibs.buffer or (errorHandler.buildDepError "raaz:buffer"))
            (hsPkgs."raaz".components.sublibs.random-api or (errorHandler.buildDepError "raaz:random-api"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
      };
      exes = {
        "raaz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
            (hsPkgs."raaz".components.sublibs.test-cipher or (errorHandler.buildDepError "raaz:test-cipher"))
            (hsPkgs."raaz".components.sublibs.test-digest or (errorHandler.buildDepError "raaz:test-digest"))
            (hsPkgs."raaz".components.sublibs.test-auth or (errorHandler.buildDepError "raaz:test-auth"))
            (hsPkgs."raaz".components.sublibs.test-auth-implementation or (errorHandler.buildDepError "raaz:test-auth-implementation"))
            (hsPkgs."raaz".components.sublibs.implementation or (errorHandler.buildDepError "raaz:implementation"))
            (hsPkgs."raaz".components.sublibs.xchacha-indef or (errorHandler.buildDepError "raaz:xchacha-indef"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "tests-comparative" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raaz".components.sublibs.implementation or (errorHandler.buildDepError "raaz:implementation"))
            (hsPkgs."raaz".components.sublibs.digest-api or (errorHandler.buildDepError "raaz:digest-api"))
            (hsPkgs."raaz".components.sublibs.encrypt-api or (errorHandler.buildDepError "raaz:encrypt-api"))
            (hsPkgs."raaz".components.sublibs.aead-api or (errorHandler.buildDepError "raaz:aead-api"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
        "monocypher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            (hsPkgs."raaz".components.sublibs.test-core or (errorHandler.buildDepError "raaz:test-core"))
            (hsPkgs."raaz".components.sublibs.xchacha-indef or (errorHandler.buildDepError "raaz:xchacha-indef"))
            (hsPkgs."raaz".components.sublibs.encrypt-api or (errorHandler.buildDepError "raaz:encrypt-api"))
            (hsPkgs."raaz".components.sublibs.implementation or (errorHandler.buildDepError "raaz:implementation"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
      };
      benchmarks = {
        "primitives" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion-measurement" or (errorHandler.buildDepError "criterion-measurement"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."raaz".components.sublibs.core or (errorHandler.buildDepError "raaz:core"))
            (hsPkgs."raaz".components.sublibs.implementation or (errorHandler.buildDepError "raaz:implementation"))
            (hsPkgs."raaz".components.sublibs.bench-types or (errorHandler.buildDepError "raaz:bench-types"))
            (hsPkgs."raaz".components.sublibs.bench-prim or (errorHandler.buildDepError "raaz:bench-prim"))
            (hsPkgs."raaz".components.sublibs.bench-csprg or (errorHandler.buildDepError "raaz:bench-csprg"))
          ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
            (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
          build-tools = pkgs.lib.optional (system.isWindows) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
          buildable = true;
        };
      };
    };
  }