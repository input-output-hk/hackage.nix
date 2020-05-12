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
      specVersion = "1.18";
      identifier = { name = "basement"; version = "0.0.11"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>\n, 2017-2018 Foundation Maintainers";
      maintainer = "vincent@snarc.org";
      author = "";
      homepage = "https://github.com/haskell-foundation/foundation#readme";
      url = "";
      synopsis = "Foundation scrap box of array & string";
      description = "Foundation most basic primitives without any dependencies";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (if compiler.isGhc && (compiler.version).lt "8.0"
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")));
        buildable = true;
        };
      };
    }