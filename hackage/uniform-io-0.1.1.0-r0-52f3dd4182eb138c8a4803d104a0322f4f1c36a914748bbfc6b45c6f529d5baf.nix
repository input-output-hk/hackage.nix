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
      specVersion = "1.10";
      identifier = { name = "uniform-io"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/uniform-io";
      url = "";
      synopsis = "Uniform IO over files, network, watever.";
      description = "This library defines a typeclass for abstracting\nthe differences between the several IO channels available.\nIt also includes implementations for standard IO, files and\nnetwork IO, and easy to use TLS wrapping of any of those.\nCurrently TLS only wraps sockets, std streams are not exported\nand there's no support for TLS certificate verification. Those\nare all planned to be added soon.\nRequires a '-threaded' compiler switch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        libs = [ (pkgs."ssl" or (errorHandler.sysDepError "ssl")) ];
        buildable = true;
        };
      tests = {
        "lazyness" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."uniform-io" or (errorHandler.buildDepError "uniform-io"))
            ];
          buildable = true;
          };
        };
      };
    }