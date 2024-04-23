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
    flags = { demos = false; no-pkg-config = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "Z-IO"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Z.Haskell Contributors";
      maintainer = "winterland1989@gmail.com";
      author = "Z.Haskell Contributors";
      homepage = "https://github.com/ZHaskell/Z-IO";
      url = "";
      synopsis = "Simple and high performance IO toolkit for Haskell";
      description = "Simple and high performance IO toolkit for Haskell, including\nfile system, network, ipc and more!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
        ];
        libs = if system.isWindows
          then [
            (pkgs."psapi" or (errorHandler.sysDepError "psapi"))
            (pkgs."Iphlpapi" or (errorHandler.sysDepError "Iphlpapi"))
            (pkgs."userenv" or (errorHandler.sysDepError "userenv"))
            (pkgs."Ws2_32" or (errorHandler.sysDepError "Ws2_32"))
          ]
          else pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (flags.no-pkg-config) (pkgs."uv" or (errorHandler.sysDepError "uv"))));
        pkgconfig = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (!flags.no-pkg-config) (pkgconfPkgs."libuv" or (errorHandler.pkgConfDepError "libuv")))));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
        ];
        buildable = true;
      };
      exes = {
        "z-io-http-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
            (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
      tests = {
        "Z-IO-Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
            (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "z-io-gettime" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
            (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
    };
  }