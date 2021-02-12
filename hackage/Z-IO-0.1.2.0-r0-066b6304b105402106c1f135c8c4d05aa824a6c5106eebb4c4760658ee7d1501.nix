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
    flags = { no-pkg-config = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Z-IO"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Dong Han, 2017-2020\n(c) Tao He, 2017-2019";
      maintainer = "winterland1989@gmail.com";
      author = "Dong Han, Tao He";
      homepage = "https://github.com/haskell-Z/Z-IO";
      url = "";
      synopsis = "Simple and high performance IO toolkit for Haskell";
      description = "Simple and high performance IO toolkit for Haskell, including\nfile system, network, ipc and more!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."psapi" or (errorHandler.sysDepError "psapi"))
            (pkgs."Iphlpapi" or (errorHandler.sysDepError "Iphlpapi"))
            (pkgs."userenv" or (errorHandler.sysDepError "userenv"))
            (pkgs."Ws2_32" or (errorHandler.sysDepError "Ws2_32"))
            ]
          else (pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (flags.no-pkg-config) (pkgs."uv" or (errorHandler.sysDepError "uv"))));
        pkgconfig = (pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (!flags.no-pkg-config) (pkgconfPkgs."libuv" or (errorHandler.pkgConfDepError "libuv")))));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
        buildable = true;
        };
      tests = {
        "Z-IO-Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
            (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }