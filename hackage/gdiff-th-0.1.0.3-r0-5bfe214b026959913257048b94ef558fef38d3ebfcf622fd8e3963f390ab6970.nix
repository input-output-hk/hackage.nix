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
      specVersion = "1.8";
      identifier = { name = "gdiff-th"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Generate gdiff GADTs and Instances.";
      description = "Generate gdiff GADTs and Instances. Alpha, but suprisingly functional.\nVery useful for unit testing large data structures. I have tested it on a\nfew very large collections of types and it appears to work. Although,\nwhen I tried to compare two versions of a hackage package with src-exts\nthe (GDiff) performance is terrible. In my personal experience of using\ngdiff in unit testing, the performance has be great. Your mileage may vary.\n\nI wouldn't use it for sending patches over the wire or anything like that,\nI am not convinced there are no bugs in my code yet. There are examples in the @examples@ directory of the\ncabal tarball. Also the main module includes an example in the documentation.\n\n* New in this version: It's functional.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."gdiff" or (errorHandler.buildDepError "gdiff"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."gdiff" or (errorHandler.buildDepError "gdiff"))
            (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
            (hsPkgs."language-ecmascript" or (errorHandler.buildDepError "language-ecmascript"))
            (hsPkgs."hdis86" or (errorHandler.buildDepError "hdis86"))
            ];
          buildable = true;
          };
        };
      };
    }