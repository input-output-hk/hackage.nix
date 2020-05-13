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
    flags = {
      experimental = false;
      bench-all = false;
      minimal-deps = false;
      bounds-check = false;
      doctest = false;
      linktest = false;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "foundation"; version = "0.0.22"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>, 2017- Foundation Maintainers";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-foundation/foundation";
      url = "";
      synopsis = "Alternative prelude with batteries and no dependencies";
      description = "A custom prelude with no dependencies apart from base.\n\nThis package has the following goals:\n\n* provide a base like sets of modules that provide a consistent set of features and bugfixes across multiple versions of GHC (unlike base).\n\n* provide a better and more efficient prelude than base's prelude.\n\n* be self-sufficient: no external dependencies apart from base.\n\n* provide better data-types: packed unicode string by default, arrays.\n\n* Better numerical classes that better represent mathematical thing (No more all-in-one Num).\n\n* Better I/O system with less Lazy IO\n\n* Usual partial functions distinguished through type system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).lt "8.0")) ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")));
        libs = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).lt "8.0")) ((pkgs.lib).optionals (system.isWindows) ((pkgs.lib).optional (system.isI386) (pkgs."gcc" or (errorHandler.sysDepError "gcc"))));
        buildable = if compiler.isGhc && (compiler.version).lt "8.0"
          then false
          else true;
        };
      tests = {
        "check-foundation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            ];
          buildable = true;
          };
        "foundation-link" = {
          depends = (pkgs.lib).optionals (flags.linktest) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = if flags.linktest then true else false;
          };
        "doctest" = {
          depends = (pkgs.lib).optionals (!flags.minimal-deps) ((pkgs.lib).optionals (flags.doctest) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ]);
          buildable = if flags.minimal-deps
            then false
            else if flags.doctest then true else false;
          };
        };
      benchmarks = {
        "bench" = {
          depends = (pkgs.lib).optionals (!(flags.minimal-deps || compiler.isGhc && (compiler.version).lt "7.10")) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            ] ++ (pkgs.lib).optionals (flags.bench-all) [
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]);
          buildable = if flags.minimal-deps || compiler.isGhc && (compiler.version).lt "7.10"
            then false
            else true;
          };
        };
      };
    }